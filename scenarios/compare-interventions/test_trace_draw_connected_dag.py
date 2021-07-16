import pygraphviz

unit = pygraphviz.AGraph("repeating_unit.dot")

ips =  unit.get_subgraph("cluster_inputs")
tn =  unit.get_subgraph("cluster_tn")
tn1 =  unit.get_subgraph("cluster_tn1")

print("ips:", ips)

# TODO: validate that these clusters are actually there.

num_weeks = 11

timesteps = []
inputs = []

for s1, s2 in unit.edges():
    if s1 in tn and s2 in tn1:
        timesteps.append((s1, s2))
    elif s1 in ips and s2 in tn:
        inputs.append((s1, s2))
    else:
        print("Bad edge: ", s1, s2)

g = pygraphviz.AGraph(strict=False, directed=True, rankdir="LR", newrank=True)


cluster_inputs = g.add_subgraph(name="cluster_inputs", label="inputs")

g.add_edges_from([(s1, s2.replace("_wn", "_w0")) for s1, s2 in inputs])
cluster_inputs.add_nodes_from(ips.nodes())

cluster_w0 = g.add_subgraph(name="cluster_w0", label="t0")
cluster_w0.add_nodes_from([s1.replace("_wn", "_w0") for s1, _ in timesteps])

for t in range(1, num_weeks):
    c = g.add_subgraph(name=f"cluster_{t}", label=f"t{t}", rank="same")
    edges = [(s1.replace("_wn", f"_w{t-1}"), s2.replace("_wn1", f"_w{t}")) for s1, s2 in timesteps]
    g.add_edges_from(edges)
    g.add_edges_from([(s1, s2.replace("_wn", f"_w{t}")) for s1, s2 in inputs])
    c.add_nodes_from([s2 for _, s2 in edges])

for s in g.subgraphs():
    for n in s.nodes():
        n.attr['id'] = str(n)

g.write("causal_dag.dot")

g.layout("dot")
g.draw("causal_dag.dot.pdf")

# test

g1 = unit = pygraphviz.AGraph("zigzag-steps.dot")
g2 = unit = pygraphviz.AGraph("causal_dag.dot")

print("zigzag-steps edges not in causal_dag")
for e in g1.edges():
    if e not in g2.edges():
        print(e)

print("causal_dag edges not in zigzag-steps")
for e in g2.edges():
    if e not in g1.edges():
        print(e)


