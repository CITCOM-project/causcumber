from gherkin.parser import Parser
import re

import logging
logging.getLogger('dowhy').setLevel(logging.CRITICAL)

import pandas as pd
import covasim as cv
import os

import sys
sys.path.append("../../")
from causcumber_utils import run_dowhy

import pygraphviz

import matplotlib.pyplot as plt

# Mute the "RuntimeWarning: divide by zero encountered in double_scalars" messages
import warnings
warnings.filterwarnings("ignore", category=RuntimeWarning)

causal_variables = {"inputs": set(), "outputs": set()}

def plot(data, x_col, y_col):
    grouped = data.groupby('intervention')
    for i, g in grouped:
        plt.scatter(g[x_col], g[y_col], label=i)
    plt.xlabel(x_col)
    plt.ylabel(y_col)
    plt.legend(bbox_to_anchor=(1.05, 1), loc='upper left')
    plt.show()

def dict_plus(dic1, dic2):
    for field in dic2:
        if field not in dic1:
            dic1[field] = []
        dic1[field].append(dic2[field])


def draw_dag():
    g = pygraphviz.AGraph(strict=False, directed=True, rankdir="LR", newrank=True)
    for v2 in causal_variables['outputs']:
        for v1 in causal_variables['inputs']:
            g.add_edge(v1, v2)
        for v1 in causal_variables['outputs']:
            if v1 != v2:
                g.add_edge(v1, v2)
    g.write("causal_dag_connected.dot")


def run_covasim(label, params, interventions, n_runs=10, run=True):
    params['interventions'] = []
    if 'n_days' in params:
        params['n_days'] = int(params['n_days'])
    for intervention in interventions:
        if intervention == "testing":
            params['interventions'].append(cv.test_prob(
                symp_prob=params['symp_prob'],
                asymp_prob=params['asymp_prob'],
                symp_quar_prob=params['symp_quar_prob'],
                asymp_quar_prob=params['asymp_quar_prob']
            ))
        elif intervention == "tracing":
            params['interventions'].append(cv.contact_tracing(trace_probs=eval(params['trace_probs'])))
        else:
            raise Exception("Invalid intervention "+intervention)

    params = {k: v for k, v in params.items() if k in base_params or k == "interventions"}
    
    causal_variables['inputs'] = causal_variables['inputs'].union(params)
   
    print("Running covasim with params")
    print("\n".join([f"  {k}: {v}" for k, v in params.items() if k != "interventions"]))
    if params["interventions"] == []:
        print("  internvetions: []")
    else:
        print("  interventions: [\n"+"\n".join([f"    {i}" for i in params["interventions"]]) + "\n  ]")
    
    if not run:
        return None

    intervention_sim = cv.MultiSim(cv.Sim(pars=params, label=label, verbose=0))
    intervention_sim.run(n_runs=n_runs, verbose=0)
    fields = {'intervention': []}
    for sim in intervention_sim.sims:
        fields['intervention'].append(label)
        dict_plus(fields, {k: v for k, v in sim.compute_summary(output=True, full=False).items() if k in causal_variables['outputs']})
        dict_plus(fields, base_params)
    data = pd.DataFrame.from_dict(fields)
    
    if os.path.exists("results/data.csv"):
        data.to_csv(path_or_buf="results/data.csv", mode='a', header=False)
    else:
        data.to_csv(path_or_buf="results/data.csv")


def test(data, graph, treatment_var, outcome_var, control_val, treatment_val, relation):
    print("RELATION:", relation)
    
    grouped = {k:v for k, v in data.groupby(treatment_var)}
    print("Association estimate:", grouped[treatment_val][outcome_var].mean() - grouped[control_val][outcome_var].mean())

    causal_estimate, (ci_low, ci_high) = run_dowhy(data, graph, treatment_var, outcome_var, control_val, treatment_val)
    print("Causal estimate:", causal_estimate)
    assert(ci_low < ci_high)
    
    if relation == "equal to":
        print("EXPECTED: ~0")
        if -1 < causal_estimate < 1 and ci_low < 0 < ci_high:
            print("result: PASS")
        else:
            print("result: FAIL")
    elif relation == "less than" and ci_high < 0:
        print("EXPECTED: estimate < 0")
        if causal_estimate < 0:
            print("result: PASS")
        else:
            print("result: FAIL")
    elif relation == "greater than" and ci_low > 0:
        print("EXPECTED: estimate > 0")
        if causal_estimate > 0:
            print("result: PASS")
        else:
            print("result: FAIL")
    else:
        raise ValueError(f"Unsupported relation '{relation}'")
    

param_re = re.compile("(\w+)=(.*)")
intervention_re = re.compile("a (\w+) intervention.*")
causal_q_re = re.compile('the "(\w+)" should be "([\w ]+)" ([\w ]+)')

parser = Parser()

with open("features/test-trace.feature") as f:
    feature = parser.parse("".join(f.readlines()))['feature']

# get the background
background = feature['children'][0]['background']

# get the scenarios
scenarios = [s['scenario'] for s in feature['children'][1:]]

# get the base parameters and run covasim
print(background['name'])
base_params = {}
for step in background['steps']:
    param = param_re.search(step['text'])
    if param:
        base_params[param.group(1)] = param.group(2)
        causal_variables['inputs'].add(param.group(1))
    elif step['keyword'].strip() == "*" and param is None:
        causal_variables['outputs'].add(step['text'])

run_covasim(background['name'], base_params.copy(), [])

scenario_treatments = {'Baseline': 0}

tests = []

# Start the enumeration at 1 because baseline acts as zero
for i, scenario in enumerate(scenarios, 1):
    print("")
    print(scenario['name'])
    
    scenario_treatments[scenario['name']] = i
    params = base_params.copy()
    interventions = []
    causal_estimate = None
    relation = None
    for step in scenario['steps']:
        param = param_re.search(step['text'])
        intervention = intervention_re.search(step['text'])
        causal_q = causal_q_re.search(step['text'])
        if param:
            params[param.group(1)] = param.group(2)
        elif intervention:
            interventions.append(intervention.group(1))
            # scenario_treatments[scenario['name']] = len(interventions)
        elif step['text'] == "the simulation is complete":
            run_covasim(scenario['name'], params, interventions)
        # load the causal question into the buffer
        elif causal_q:
            tests.append(dict(
                label = scenario['name'],
                outcome_var = causal_q.group(1),
                control_val = causal_q.group(3),
                treatment_val = scenario['name'],
                relation = causal_q.group(2)
                )
            )
        else:
            raise Exception("Invalid step")

draw_dag()

scenario_treatments = {'Baseline': 0, 'Standard testing': 1,
                       'Standard tracing': 2, 'No testing': 3,
                       'No tracing': 4, 'Trace without test': 5,
                       'Optimal testing': 6, 'Optimal tracing': 7}

data = pd.read_csv("results/data.csv")
#plot(data, "intervention", "cum_deaths")
data['intervention'] = [scenario_treatments[i] for i in data['intervention']]

data['intervention'] = data['intervention'].astype('category')
data['pop_type'] = data['pop_type'].astype('category')
data['location'] = data['location'].astype('category')

print()
print("RUNNING TESTS")
for t in tests:
    print(t['label'])
    print("control_val:", t['control_val'])
    print("treatment_val:", t['treatment_val'])
    control_val = scenario_treatments[t['control_val']]
    treatment_val = scenario_treatments[t['treatment_val']]
    test(
        data = data,
        graph = "causal_dag.dot",
        treatment_var = "intervention",
        outcome_var = t['outcome_var'],
        control_val = control_val,
        treatment_val = treatment_val,
        relation = t['relation']
    )
    print()
