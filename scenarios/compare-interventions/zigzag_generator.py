#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Jun  8 15:49:08 2021

@author: michael
"""
import pygraphviz

time = 7

g = pygraphviz.AGraph(strict=False, directed=True, rankdir="LR", newrank=True)


cum_infections = lambda n: f'cum_infections_w{n}'
cum_symptomatic = lambda n: f'cum_symptomatic_w{n}'
cum_severe = lambda n: f'cum_severe_w{n}'
cum_critical = lambda n: f'cum_critical_w{n}'
cum_tests = lambda n: f'cum_tests_w{n}'
cum_deaths = lambda n: f'cum_deaths_w{n}'
n_exposed = lambda n: f'n_exposed_w{n}'
n_quarantined = lambda n: f'n_quarantined_w{n}'

quar_period = 'quar_period'
intervention = 'intervention'
pop_type = 'pop_type'
pop_size = 'pop_size'
pop_infected = 'pop_infected'
n_days = 'n_days'
location = 'location'

week = [
    n_quarantined,
    n_exposed,
    cum_infections,
    cum_symptomatic,
    cum_severe,
    cum_critical,
    cum_deaths,
    cum_tests
]

covasim_args = [
    quar_period,
    intervention,
    pop_type,
    pop_size,
    location,
    pop_infected,
    n_days
]

# Model inputs
inputs = g.add_subgraph(name="cluster_inputs", label="inputs")
for arg in covasim_args:
    inputs.add_node(arg)

# Connected graph
# tn = g.add_subgraph(name="cluster_tn", label="t_n")
# tn1 = g.add_subgraph(name="cluster_tn1", label="t_n+1")

# for n in week:
#     tn.add_node(n("n"))
#     tn1.add_node(n("n1"))
#     for n1 in week:
#         g.add_edge(n("n"), n1("n1"))
    
#     for i in inputs:
#         g.add_edge(i, n("n"))
    
# g.write("repeating_unit.dot")    
# g.write("repeating_unit_connected.dot")    


# First time step
c = g.add_subgraph(name="cluster_0", label="t0")
for n in week:
    c.add_node(n(0))

# Inputs to initial time step

def input_connections(t):
     # This is independent at t0
    if t > 0:
        g.add_edge(quar_period, n_quarantined(t))
    g.add_edge(intervention, n_exposed(t))
    g.add_edge(intervention, n_quarantined(t))
    g.add_edge(intervention, cum_tests(t))

    for i in [pop_type, pop_size, location]:
        g.add_edge(i, n_quarantined(t))
        g.add_edge(i, n_exposed(t))
        # this is determined by pop_infected
        if t > 0:
            g.add_edge(i, cum_infections(t))
        g.add_edge(i, cum_symptomatic(t))
        g.add_edge(i, cum_severe(t))
        g.add_edge(i, cum_critical(t))
    
    g.add_edge(pop_infected, cum_infections(t))
    g.add_edge(pop_infected, cum_symptomatic(t))
    g.add_edge(pop_infected, cum_severe(t))
    g.add_edge(pop_infected, cum_critical(t))

input_connections(0)

# Repeating unig
# Having a static repeating unit isn't a very good reflection on reality
# because youcan't recover or die until you've been infected.
# It's actually even more complicated than this because conditions are
# ordered symptomatic < severe < critical < dead and people move through
# them one at a time, so there will be zero dead people until at least
# t4 because you'd have to go infected -> symptomatic -> severe -> critical -> dead
for t in range(1, time):
    c = g.add_subgraph(name=f"cluster_{t}", label=f"t{t}", rank="same")
    for n in week:
        c.add_node(n(t))
    input_connections(t)
    
    g.add_edge(n_quarantined(t-1), n_quarantined(t))
    g.add_edge(n_quarantined(t-1), n_exposed(t))
    
    g.add_edge(n_exposed(t-1), n_exposed(t))
    g.add_edge(n_exposed(t-1), cum_infections(t))
    
    g.add_edge(cum_infections(t-1), n_quarantined(t))
    g.add_edge(cum_infections(t-1), n_exposed(t))
    g.add_edge(cum_infections(t-1), cum_infections(t))
    g.add_edge(cum_infections(t-1), cum_symptomatic(t))
    
    g.add_edge(cum_symptomatic(t-1), n_quarantined(t))
    g.add_edge(cum_symptomatic(t-1), cum_infections(t))
    g.add_edge(cum_symptomatic(t-1), cum_symptomatic(t))
    g.add_edge(cum_symptomatic(t-1), cum_severe(t))
    
    g.add_edge(cum_severe(t-1), cum_severe(t))
    g.add_edge(cum_severe(t-1), cum_critical(t))
    
    g.add_edge(cum_critical(t-1), cum_critical(t))
    g.add_edge(cum_critical(t-1), cum_deaths(t))
    
    g.add_edge(cum_tests(t-1), n_quarantined(t))
    g.add_edge(cum_tests(t-1), cum_tests(t))
    
    g.add_edge(cum_deaths(t-1), n_exposed(t))
    g.add_edge(cum_deaths(t-1), cum_deaths(t))
    g.add_edge(cum_deaths(t-1), cum_tests(t))

g.write("zigzag-steps.dot")
