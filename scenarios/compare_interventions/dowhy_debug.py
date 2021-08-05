#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Aug  4 08:41:53 2021

@author: michael
"""
import dowhy
import pandas as pd
import matplotlib.pyplot as plt
import covasim as cv

treatment_var = "interventions"
outcome_var = "cum_deaths_12"
control_value = "baseline"
treatment_value = "traceNoTest"

data = pd.concat([pd.read_csv(f"results/{f}") for f in
                  ["data.csv", "data-new.csv", "data-2.csv", "data-3.csv",
                   "data-4.csv", "data-5.csv", "data-6.csv", "data-7.csv",
                   "data-8.csv"]])


data = data.loc[data[treatment_var].isin([control_value, treatment_value])]

counts = {}
for _, row in data.iterrows():
    if row['location'] not in counts:
        counts[row['location']] = {}
    if row['interventions'] not in counts[row['location']]:
        counts[row['location']][row['interventions']] = 0
    counts[row['location']][row['interventions']] += 1

for k, v in counts.items():
    print(k)
    plt.scatter(data.loc[data['location'] == k][treatment_var], data.loc[data['location'] == k][outcome_var])
    for t, c in sorted(list(v.items())):
        print(" ", t, c)

print(treatment_value, data.loc[data[treatment_var] == treatment_value][outcome_var].mean())
print(control_value, data.loc[data[treatment_var] == control_value][outcome_var].mean())


conversions = {c: i for i, c in enumerate(set(data[treatment_var]))}
data[treatment_var] = [conversions[x] for x in data[treatment_var]]


for c in data.columns:
    if str(data[c].dtype) == "object":
        data[c] = data[c].astype("category")


# I. Create a causal model from the data and given graph.
print("Creating model")
model = dowhy.CausalModel(
    data=data,
    treatment=treatment_var,
    outcome=outcome_var,
    common_causes=[])

# II. Identify causal effect and return target estimands
print("Identifying estimand")
identified_estimand = model.identify_effect()

# III. Estimate the target estimand using a statistical method.
print("Estimating")
estimate = model.estimate_effect(identified_estimand,
                                 method_name="backdoor.linear_regression",
                                 control_value=conversions[control_value],
                                 treatment_value=conversions[treatment_value],
                                 confidence_intervals=True)
print(estimate)

# IV. Refute the obtained estimate using multiple robustness checks.
refute_results = model.refute_estimate(identified_estimand, estimate,
                                       method_name="random_common_cause")
print(refute_results)
