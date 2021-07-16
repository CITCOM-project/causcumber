from gherkin.parser import Parser
import re

import logging
logging.getLogger('dowhy').setLevel(logging.CRITICAL)

import sys
sys.path.append("../../")

import pygraphviz

causal_variables = {"inputs": set(), "outputs": set()}

parser = Parser()

with open("test-trace.feature") as f:
    feature = parser.parse("".join(f.readlines()))['feature']

# get the background
background = feature['children'][0]['background']

# get the scenarios
scenarios = [s['scenario'] for s in feature['children'][1:]]

param_re = re.compile("(\w+)=(.+)")
output_re = re.compile("\w+((_w\{\w+\})?)$") # Group 1 is the temporal bit
n_weeks_re = re.compile('for each week "(\w+)" in "(\d+)" weeks')

def week(var, w):
    return var.replace(output_re.match(var).group(1), f"_w{w}")


def is_temporal(var):
    return output_re.match(var).group(1) != ""

num_weeks = None
num_weeks_placeholder = None

# get the base parameters and run covasim
print(background['name'])
base_params = {}
for step in background['steps']:
    param = param_re.search(step['text'])
    n_weeks = n_weeks_re.search(step['text'])
    output = output_re.search(step['text'])
    if step['keyword'].strip()  == "Given":
        continue
    elif param:
        base_params[param.group(1)] = param.group(2)
        causal_variables['inputs'].add(param.group(1))
    elif n_weeks:
        num_weeks = int(n_weeks.group(2))
        num_weeks_placeholder = n_weeks.group(1)
        output_re = re.compile("\w+((_w\{"+num_weeks_placeholder+"\})?)$")
    elif output and num_weeks is not None:
        for n in range(num_weeks):
            causal_variables['outputs'].add(step['text'])#.replace("{"+num_weeks_placeholder+"}", str(n)))
    else:
            raise Exception("Invalid step:", step)

print(causal_variables)

g = pygraphviz.AGraph(strict=False, directed=True, rankdir="LR", newrank=True)
tn = g.add_subgraph(name="cluster_tn")
tn1 = g.add_subgraph(name="cluster_tn1")
ips = g.add_subgraph(name="cluster_inputs")

for i in causal_variables['inputs']:
    ips.add_node(i)

for o in causal_variables['outputs']:
    if is_temporal(o):
        tn.add_node(week(o, "n"))
        tn1.add_node(week(o, "n1"))

for v2 in causal_variables['outputs']:
    op = output_re.match(v2)
    print(op, op.group(1))
    
    for v1 in causal_variables['inputs']:
        g.add_edge(v1, v2)
    for v1 in causal_variables['outputs']:
        if v1 != v2:
            g.add_edge(v1, v2)
g.write("causal_dag_connected.dot")


