#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Jun  8 15:49:08 2021

@author: michael
"""
import pygraphviz

grass = False

g = pygraphviz.AGraph(strict=False, directed=True, rankdir="LR", newrank=True)


time = 4

c = g.add_subgraph(name="cluster_inputs", label="inputs")
c.add_node("numInfected_t0")
c.add_node("pop_type")
c.add_node("location")
c.add_node("popSize")
c.add_node("intervention")
g.add_edge("numInfected_t0", "numInfected_t1")
g.add_edge("numInfected_t0", "numSymptomatic_t1")
g.add_edge("numInfected_t0", "numQuarantined_t1")

for t in range(1, time):
    c = g.add_subgraph(name=f"cluster_{t}", label=f"t{t}")
    
    c.add_node(f"numInfected_t{t}")
    
    c.add_node(f"numSymptomatic_t{t}")
    c.add_node(f"numSevere_t{t}")
    c.add_node(f"numCritical_t{t}")
    c.add_node(f"numDeaths_t{t}")
    c.add_node(f"numRecoveries_t{t}")
    c.add_node(f"numQuarantined_t{t}")
    
    # Because these numbers will always be zero in the first step because you
    # can't recover or die until you've been infected
    # It's actually even more complicated than this because conditions are
    # ordered symptomatic < severe < critical < dead and people move through
    # them one at a time, so there will be zero dead people until at least
    # t4 because you'd have to go infected -> symptomatic -> severe -> critical -> dead
    if t > 1:
        g.add_edge("intervention", f"numQuarantined_t{t}")
        g.add_edge("pop_type", f"numInfected_t{t}")
    
        g.add_edge("location", f"numSymptomatic_t{t}")
        g.add_edge("location", f"numSevere_t{t}")
        g.add_edge("location", f"numCritical_t{t}")
        g.add_edge("location", f"numRecoveries_t{t}")
        g.add_edge("location", f"numDeaths_t{t}")
        
        g.add_edge("popSize", f"numSymptomatic_t{t}")
        g.add_edge("popSize", f"numSevere_t{t}")
        g.add_edge("popSize", f"numCritical_t{t}")
        g.add_edge("popSize", f"numRecoveries_t{t}")

    if t < time - 1:
        g.add_edge(f"numInfected_t{t}", f"numInfected_t{t+1}")
        g.add_edge(f"numSymptomatic_t{t}", f"numSymptomatic_t{t+1}")
        g.add_edge(f"numSevere_t{t}", f"numSevere_t{t+1}")
        g.add_edge(f"numCritical_t{t}", f"numCritical_t{t+1}")
        g.add_edge(f"numDeaths_t{t}", f"numDeaths_t{t+1}")
        g.add_edge(f"numRecoveries_t{t}", f"numRecoveries_t{t+1}")
        g.add_edge(f"numQuarantined_t{t}", f"numQuarantined_t{t+1}")
        
        g.add_edge(f"numInfected_t{t}", f"numQuarantined_t{t+1}")
        g.add_edge(f"numQuarantined_t{t}", f"numInfected_t{t+1}")
        
        g.add_edge(f"numInfected_t{t}", f"numRecoveries_t{t+1}")
        g.add_edge(f"numInfected_t{t}", f"numSymptomatic_t{t+1}")
        g.add_edge(f"numSymptomatic_t{t}", f"numSevere_t{t+1}")
        g.add_edge(f"numSevere_t{t}", f"numCritical_t{t+1}")
        g.add_edge(f"numCritical_t{t}", f"numDeaths_t{t+1}")
    

g.write("zigzag-steps.dot")
