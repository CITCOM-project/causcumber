#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Nov 22 09:33:43 2021

@author: michael
"""
import networkx
import scipy.stats as stats
import pandas as pd
import matplotlib.pyplot as plt


def direct_causes(dag, node):
    return {cause for cause, effect in dag.edges() if effect == node}


def direct_mediators(dag, cause, effect):
    return {x[-2] for x in networkx.algorithms.simple_paths.all_simple_paths(dag, "location", "cum_deaths")}


dag = networkx.drawing.nx_pydot.read_dot("dags/compare_interventions_basic_pretty.dot")

print(direct_causes(dag, "cum_deaths"))
print(direct_mediators(dag, "location", "cum_deaths"))

# print(set(dag.nodes()).difference(direct_causes(dag, "cum_deaths")))



# data = pd.read_csv("results/compare_interventions_basic/data/runs.csv")


# _, bins, _ = plt.hist(data["cum_infections"], density=1, bins=4)
# best_fit = stats.beta.fit(data["cum_infections"])
# best_fit_line = stats.beta.pdf(bins, *best_fit)
# plt.plot(bins, best_fit_line)
