from gherkin.parser import Parser
import re

import logging
logging.getLogger('dowhy').setLevel(logging.CRITICAL)

import pandas as pd
import covasim as cv
from dowhy import CausalModel
import os

import pygraphviz

import pickle

# Mute the "RuntimeWarning: divide by zero encountered in double_scalars" messages
import warnings
warnings.filterwarnings("ignore", category=RuntimeWarning)

causal_variables = {"inputs": set(), "outputs": set()}

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


def run_covasim(label, params, interventions, n_runs=100, run=False):
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


def run_dowhy(datapath, graph, treatment_var, outcome_var, control_val, treatment_val, relation, run=True):
    print("Running doWhy with params")
    print("\n".join([f"  {k}: {v}" for k, v in locals().items()]))
    
    if not run:
        return None
    
    # 1. Read in the data
    data = pd.read_csv(datapath)
    data['intervention'] = [scenario_treatments[i] for i in data['intervention']]
    
    data['intervention'] = data['intervention'].astype('category')
    data['pop_type'] = data['pop_type'].astype('category')
    data['location'] = data['location'].astype('category')
    
    # 2. Create a causal model from the data and given graph.
    model = CausalModel(
        data=data,
        treatment=treatment_var,
        outcome=outcome_var,
        graph=graph)
    
    # 3. Identify causal effect and return target estimands
    identified_estimand = None
    if False and os.path.exists(f"results/{treatment_var}-{outcome_var}.id"):
        with open(f"results/{treatment_var}-{outcome_var}.id", 'rb') as f:
            identified_estimand = pickle.load(f)
    else:
        identified_estimand = model.identify_effect(method_name="minimal-adjustment")
        with open(f"results/{treatment_var}-{outcome_var}.id", 'wb') as f:
            pickle.dump(identified_estimand, f)
    
    # 4. Estimate the target estimand using a statistical method.
    estimate = model.estimate_effect(identified_estimand, method_name="backdoor.linear_regression", control_value=control_val, treatment_value=treatment_val)
    causal_estimate = estimate.value
    print("ESTIMATE:", causal_estimate)
    if relation == "equal to" and causal_estimate < 0.1 and causal_estimate > -0.1:
        print("result: PASS")
    elif relation == "less than" and causal_estimate < 0:
        print("result: PASS")
    else:
        print("result: FAIL")
    

param_re = re.compile("(\w+)=(.*)")
intervention_re = re.compile("a (\w+) intervention.*")
causal_q_re = re.compile('the "(\w+)" should be "([\w ]+)" ([\w ]+)')

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
                relation = causal_q.group(2),
                run=True
                )
            )
        else:
            raise Exception("Invalid step")

draw_dag()
print()
print("RUNNING TESTS")
for test in tests:
    print(test['label'])
    print("control_val:", test['control_val'])
    print("treatment_val:", test['treatment_val'])
    run_dowhy(
        datapath = "results/data.csv",
        graph = "causal_dag.dot",
        treatment_var = "intervention",
        outcome_var = test['outcome_var'],
        control_val = scenario_treatments[test['control_val']],
        treatment_val = scenario_treatments[test['treatment_val']],
        relation = test['relation']
    )
    print()
