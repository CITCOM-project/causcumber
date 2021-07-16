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


def plot(data, x_col, y_col):
    grouped = data.groupby('intervention')
    for i, g in grouped:
        plt.scatter(g[x_col], g[y_col], label=i)
    plt.xlabel(x_col)
    plt.ylabel(y_col)
    plt.legend(bbox_to_anchor=(1.05, 1), loc='upper left')
    plt.xticks(rotation = 45, ha="right") # Rotates X-Axis Ticks by 45-degrees

    plt.show()


treatment_var = "cum_infections_w7"
outcome_var = "cum_deaths_w10"
control_val = 5000
treatment_val = 10000

print("Reading the data...")
data = pd.read_csv("results/week-by-week_100.csv")
plot(data, treatment_var, outcome_var)

grouped = {k:v for k, v in data.groupby(treatment_var)}
# print("Association estimate:", grouped[treatment_val][outcome_var].mean() - grouped[control_val][outcome_var].mean())

data['intervention'] = [scenario_treatments.get(i, i) for i in data['intervention']]
data['intervention'] = data['intervention'].astype('category')
data['pop_type'] = data['pop_type'].astype('category')
data['location'] = data['location'].astype('category')

run_dowhy(data, "zigzag-steps.dot", treatment_var, outcome_var,
          control_val, treatment_val,
          verbose=True)

# run_dowhy("results/data.csv", "testing.dot", "intervention", "cum_deaths", 1, 2)
# run_dowhy("results/data.csv", "testing.dot", "intervention", "cum_deaths", 2, 3)
