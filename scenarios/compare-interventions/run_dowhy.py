#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Jul  6 11:51:00 2021

@author: michael
"""
import dowhy
import pandas as pd

import warnings
warnings.filterwarnings("ignore", category=RuntimeWarning)

import sys
sys.path.append("../../")

from causcumber_utils import dagitty_identification

import matplotlib.pyplot as plt

scenario_treatments = {'Baseline': 0, 'Standard testing': 1,
                       'Standard tracing': 2, 'No testing': 3,
                       'No tracing': 4, 'Trace without test': 5,
                       'Optimal testing': 6, 'Optimal tracing': 7}


def plot(data, x_col, y_col):
    plt.scatter(data[x_col], data[y_col])
    plt.xlabel(x_col)
    plt.ylabel(y_col)
    plt.show()



def run_dowhy(datapath, graph, treatment_var, outcome_var, control_val, treatment_val):
    print("Running doWhy with params")
    print("\n".join([f"  {k}: {v}" for k, v in locals().items()]))
    
    # 1. Read in the data
    print("\nReading the data...")
    data = pd.read_csv(datapath)

    plot(data, treatment_var, outcome_var)

    data['intervention'] = [scenario_treatments.get(i, i) for i in data['intervention']]

    data['intervention'] = data['intervention'].astype('category')
    data['pop_type'] = data['pop_type'].astype('category')
    data['location'] = data['location'].astype('category')

    # 2. Create a causal model from the data and given graph
    print("Creating a causal model...")
    adjustment_set = dagitty_identification(graph, treatment_var, outcome_var)
    print("  adjustment_set", adjustment_set)
    model = dowhy.CausalModel(
        data=data,
        treatment=treatment_var,
        outcome=outcome_var,
        common_causes=adjustment_set
    )
    
    # # 3. Identify causal effect and return target estimands
    print("Identifying...")
    identified_estimand = model.identify_effect(proceed_when_unidentifiable=True)
    # print(identified_estimand)     
       
    # 4. Estimate the target estimand using a statistical method.
    print("Estimating...")
    estimate = model.estimate_effect(
        identified_estimand,
        method_name="backdoor.linear_regression",
        treatment_value=treatment_val,
        control_value=control_val,
        confidence_intervals=True
        )
    ci_low, ci_high = estimate.get_confidence_intervals()[0]
    print(data[["cum_severe_w5", "cum_deaths_w6"]])
    print("Total Effect Estimate:", round(estimate.value, 2))
    print("95% Confidence Intervals: [{}, {}]".format(round(ci_low, 2), round(ci_high, 2)))
    return estimate.value

run_dowhy("results/week-by-week_10.csv", "zigzag-steps.dot", "cum_severe_w5", "cum_deaths_w6", 3000, 4000)
# run_dowhy("results/data.csv", "testing.dot", "intervention", "cum_deaths", 1, 2)
# run_dowhy("results/data.csv", "testing.dot", "intervention", "cum_deaths", 2, 3)
