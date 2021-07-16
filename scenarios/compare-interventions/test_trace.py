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


def run_covasim(label, params, interventions, n_runs=10, run=False):
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
        print("  interventions: [\n"+",\n".join([f"    {i}" for i in params["interventions"]]) + "\n  ]")
    
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
    if treatment_val in grouped and control_val in grouped:
        print("Association estimate:", grouped[treatment_val][outcome_var].mean() - grouped[control_val][outcome_var].mean())

    causal_estimate, (ci_low, ci_high) = run_dowhy(data, graph, treatment_var, outcome_var, control_val, treatment_val)
    print("Causal estimate:", causal_estimate)
    print("Confidence intervals:", ci_low, ci_high)
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
    elif relation == "more than":
        print("EXPECTED: estimate > 0")
        if causal_estimate > 0 and ci_low > 0:
            print("result: PASS")
        else:
            print("result: FAIL")
    else:
        raise ValueError(f"Unsupported relation '{relation}'")
    

param_re = re.compile("(\w+)=(.*)")

parser = Parser()

with open("test-trace.feature") as f:
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

intervention_re = re.compile("a (\w+) intervention.*")
causal_q_re = re.compile('the "(\w+)" should be "([\w ]+)" ([\w ]+)')
implicit_scenario_re = re.compile('a control scenario with (\w+)=(\w+)')

# Start the enumeration at 1 because baseline acts as zero
for i, scenario in enumerate(scenarios, 1):
    print("")
    print(scenario['name'])
    
    scenario_treatments[scenario['name']] = i
    params = base_params.copy()
    interventions = []
    causal_estimate = None
    relation = None
    causal_test = {'label': scenario['name']}
    for step in scenario['steps']:
        param = param_re.search(step['text'])
        intervention = intervention_re.search(step['text'])
        causal_q = causal_q_re.search(step['text'])
        implicit_scenario = implicit_scenario_re.search(step['text'])
        if param and step['keyword'].strip() == "*":
            params[param.group(1)] = param.group(2)
        elif intervention:
            interventions.append(intervention.group(1))
            # scenario_treatments[scenario['name']] = len(interventions)
        elif step['text'] == "the simulation is complete":
            run_covasim(scenario['name'], params, interventions)
        elif implicit_scenario:
            causal_test['treatment_var'] = implicit_scenario.group(1)
            causal_test['control_val'] = implicit_scenario.group(2)
        elif param and step['keyword'].strip() == "When":
            if param.group(1) ==  causal_test['treatment_var']:
                causal_test['treatment_val'] = param.group(2)
            else:
                raise ValueError(f"Treatment variable {param.group(1)} does not match treatment variable {causal_test['treatment_var']}")
        # load the causal question into the buffer
        # TODO: clean this up a bit
        elif causal_q:
            causal_test['outcome_var'] = causal_q.group(1)
            causal_test['relation'] = causal_q.group(2)
            if 'treatment_var' not in causal_test:
                causal_test['treatment_var'] = "intervention"
                causal_test['control_val'] = causal_q.group(3)
                causal_test['treatment_val'] = scenario['name']
        else:
            raise Exception("Invalid step:", step)
    tests.append(causal_test)

# draw_dag()

print(scenario_treatments)


data = pd.read_csv("results/week-by-week_100.csv")
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
    if t['control_val'] in scenario_treatments:
        control_val = scenario_treatments.get(t['control_val'])
    else:
        control_val = int(t['control_val'])
    if t['treatment_val'] in scenario_treatments:
        treatment_val = scenario_treatments.get(t['treatment_val'])
    else:
        treatment_val = int(t['treatment_val'])
    test(
        data = data,
        graph = "zigzag-steps.dot",
        treatment_var = t['treatment_var'],
        outcome_var = t['outcome_var'],
        control_val = control_val,
        treatment_val = treatment_val,
        relation = t['relation']
    )
    print()
