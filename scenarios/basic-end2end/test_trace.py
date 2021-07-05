from gherkin.parser import Parser
import re

import logging
logging.getLogger('dowhy').setLevel(logging.CRITICAL)

import pandas as pd
import covasim as cv
from dowhy import CausalModel
import os


print("THIS IS TEST_TRACE")

def dict_plus(dic1, dic2):
    for field in dic2:
        if field not in dic1:
            dic1[field] = []
        dic1[field].append(dic2[field])


def run_covasim(label, params, interventions, intervention_no, n_runs=100):
    print("RUNNING COVASIM")
    print("params:", params)
    print("interventions:", interventions)
    params['interventions'] = []
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
    intervention_sim = cv.MultiSim(cv.Sim(pars=params, label=label, verbose=0))
    intervention_sim.run(n_runs=n_runs)
    fields = {'intervention': []}
    for sim in intervention_sim.sims:
        fields['intervention'].append(intervention_no)
        dict_plus(fields, {k: v for k, v in sim.compute_summary(output=True, full=False).items() if not (k.startswith("new_") or k.startswith("n_"))})
        dict_plus(fields, base_params)
    data = pd.DataFrame.from_dict(fields)
    
    if os.path.exists("results/data.csv"):
        data.to_csv(path_or_buf="results/data.csv", mode='a', header=False)
    else:
        data.to_csv(path_or_buf="results/data.csv")


def run_dowhy(datapath, graph, treatment_var, outcome_var, control_val, treatment_val):
    print("RUNNING doWhy with params")
    args = locals()
    for k in args:
        print(f"  {k} = {args[k]}")

    # 1. Read in the data
    data = pd.read_csv(datapath)
    
    data['intervention'] = data['intervention'].astype('category')
    data['pop_type'] = data['pop_type'].astype('category')
    data['location'] = data['location'].astype('category')
    
    data['start_day'] = data['start_day'].astype('category')
    data['end_day'] = data['end_day'].astype('category')
    
    # 2. Create a causal model from the data and given graph.
    model = CausalModel(
        data=data,
        treatment=treatment_var,
        outcome=outcome_var,
        graph=graph)
    
    # 3. Identify causal effect and return target estimands
    identified_estimand = model.identify_effect(method_name="minimal-adjustment")
    
    # 4. Estimate the target estimand using a statistical method.
    estimate = model.estimate_effect(identified_estimand, method_name="backdoor.linear_regression", control_value=control_val, treatment_value=treatment_val)
    print("ESTIMATE:", estimate.value)
    return estimate.value
    

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
base_params = {}
for step in background['steps']:
    param = param_re.search(step['text'])
    if param:
        base_params[param.group(1)] = param.group(2)
run_covasim(background['name'], base_params, [], 0)

scenario_treatments = {'Baseline': 0}

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
            run_covasim(scenario['name'], params, interventions, i)
        elif causal_q:
            causal_estimate = run_dowhy(
                datapath = "results/data.csv",
                graph = "testing.dot",
                treatment_var = "intervention",
                outcome_var = causal_q.group(1),
                control_val = scenario_treatments[causal_q.group(3)],
                treatment_val = i # scenario_treatments[scenario['name']]
            )
            relation = causal_q.group(2)
        else:
            raise Exception("Invalid step")
    
    if relation == "equal to" and causal_estimate < 0.1 and causal_estimate > -0.1:
        print("result: PASS")
    elif relation == "less than" and causal_estimate < 0:
        print("result: PASS")
    else:
        print("result: FAIL")

