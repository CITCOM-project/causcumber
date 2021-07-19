import pydotplus


def add_subgraph(g, **kwargs):
    s = pydotplus.Subgraph(**kwargs)
    g.add_subgraph(s)
    return s


def add_nodes_from(g, nodes):
    for n in nodes:
        g.add_node(pydotplus.Node(n))


def add_edges_from(g, edges):
    for s1, s2 in edges:
        g.add_edge(pydotplus.Edge(s1, s2))


unit = pydotplus.graph_from_dot_file("dags/repeating_unit.dot")

ips = unit.get_subgraph("cluster_inputs")[0]
tn = unit.get_subgraph("cluster_tn")[0]
tn1 = unit.get_subgraph("cluster_tn1")[0]

ips_nodes = [n.get_name() for n in ips.get_nodes()]
tn_nodes = [n.get_name() for n in tn.get_nodes()]
tn1_nodes = [n.get_name() for n in tn1.get_nodes()]

# TODO: validate that these clusters are actually there.

num_weeks = 11

timesteps = []
inputs = []

for e in unit.get_edges():
    s1 = e.get_source()
    s2 = e.get_destination()
    if s1 in tn_nodes and s2 in tn1_nodes:
        timesteps.append((s1, s2))
    elif s1 in ips_nodes and s2 in tn_nodes:
        inputs.append((s1, s2))
    else:
        print("Bad edge: ", s1, s2)
        print(ips_nodes, s1)

g = pydotplus.Graph(graph_name="causal_dag", strict=False, directed=True,
                    rankdir="LR", newrank=True)


cluster_inputs = add_subgraph(g, graph_name="cluster_inputs", label="inputs")

add_edges_from(g, [(s1, s2.replace("_wn", "_w0")) for s1, s2 in inputs])

for n in ips.get_nodes():
    cluster_inputs.add_node(n)

cluster_w0 = add_subgraph(g,
                          graph_name="cluster_w0",
                          label="<t<sub>0</sub>>")
add_nodes_from(cluster_w0, [s1.replace("_wn", "_w0") for s1, _ in timesteps])

for t in range(1, num_weeks):
    edges = [(s1.replace("_wn", f"_w{t-1}"), s2.replace("_wn1", f"_w{t}"))
             for s1, s2 in timesteps]
    add_edges_from(g, edges)
    add_edges_from(g, [(s1, s2.replace("_wn", f"_w{t}")) for s1, s2 in inputs])

    c = add_subgraph(g,
                     graph_name=f"cluster_w{t}",
                     label=f"<t<sub>{t}</sub>>")
    add_nodes_from(c, [s2 for _, s2 in edges])

dotstring = f"digraph {g.get_name()}" + " {\n"
dotstring += "".join([f"  {k} = {v};\n" for k, v in g.obj_dict['attributes'].items()])
dotstring += "\n"

for s in g.get_subgraphs():
    dotstring += f"  subgraph {s.get_name()}" +" {\n"
    dotstring += "".join([f"    {k} = {v};\n" for k, v in g.obj_dict['attributes'].items()])
    dotstring += "".join([f"    {n.to_string()}\n" for n in s.get_nodes()])
    
    dotstring += "  }\n\n"

for e in g.get_edges():
    dotstring += f"  {e.to_string()}\n"

dotstring += "}"

with open("dags/causal_dag.dot", 'w') as f:
    print(dotstring, file=f)
    

# g.create("dags/causal_dag.dot.pdf")

# test
# g1 = unit = pygraphviz.AGraph("dags/zigzag-steps.dot")
# g2 = unit = pygraphviz.AGraph("dags/causal_dag.dot")

# print("zigzag-steps edges not in causal_dag")
# for e in g1.edges():
#     if e not in g2.edges():
#         print(e)

# print("causal_dag edges not in zigzag-steps")
# for e in g2.edges():
#     if e not in g1.edges():
#         print(e)
