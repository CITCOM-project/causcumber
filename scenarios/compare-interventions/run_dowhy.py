#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Jul  6 11:51:00 2021

@author: michael
"""
import pandas as pd

import warnings
warnings.filterwarnings("ignore", category=RuntimeWarning)

import sys
sys.path.append("../../")
from causcumber_utils import run_dowhy

import matplotlib.pyplot as plt

scenario_treatments = {'Baseline': 0, 'Standard testing': 1,
                       'Standard tracing': 2, 'No testing': 3,
                       'No tracing': 4, 'Trace without test': 5,
                       'Optimal testing': 6, 'Optimal tracing': 7}
treatments_scenarios = {v: k for k, v in scenario_treatments.items()}


def plot(data, x_col, y_col):
    grouped = data.groupby('intervention')
    for i, g in grouped:
        plt.scatter(g[x_col], g[y_col], label=treatments_scenarios[i])
    plt.xlabel(x_col)
    plt.ylabel(y_col)
    plt.legend(bbox_to_anchor=(1.05, 1), loc='upper left')
    plt.show()

print("Reading the data...")
data = pd.read_csv("results/week-by-week_100.csv")

data['intervention'] = [scenario_treatments.get(i, i) for i in data['intervention']]
data['intervention'] = data['intervention'].astype('category')
data['pop_type'] = data['pop_type'].astype('category')
data['location'] = data['location'].astype('category')

plot(data, 'intervention', 'cum_deaths_w10')

run_dowhy(data, "zigzag-steps.dot", "intervention", "cum_deaths_w10", 0, 3)
# run_dowhy("results/data.csv", "testing.dot", "intervention", "cum_deaths", 1, 2)
# run_dowhy("results/data.csv", "testing.dot", "intervention", "cum_deaths", 2, 3)
