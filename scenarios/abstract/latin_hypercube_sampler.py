#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Nov  5 08:49:27 2021

@author: michael
"""
import lhsmdu
import pandas as pd
import scipy.stats.distributions as ssd

columns = {
    "location": ssd.norm,
    "n_days": ssd.beta(a=3, b=5, loc=60, scale=50),
    "pop_size": ssd.norm(loc=10000, scale=1000),
    "pop_infected": ssd.beta(a=3, b=5, loc=120, scale=50),
    "quar_period": ssd.uniform(loc=0, scale=20),
    "asymp_prob": ssd.uniform(loc=0, scale=1),
    "asymp_quar_prob": ssd.uniform(loc=0, scale=1),
    "symp_prob": ssd.uniform(loc=0, scale=1),
    "symp_quar_prob": ssd.uniform(loc=0, scale=1),
    "trace_probs": ssd.uniform(loc=0, scale=1),
}

# Latin Hypercube Sampling of 10 variables, and 3 samples each.
sample = pd.DataFrame(lhsmdu.sample(10, 200).T, columns=columns)

for column in sample:
    sample[column] = lhsmdu.inverseTransformSample(columns[column], sample[column])
    if column != "location":
        assert all(sample[column] >= 0), f"{column}:\n{[x for x in sample[column] if x < 0]}"

sample["location"] = ["Niger" if loc > 0 else "Japan" for loc in sample["location"]]

int_cols = ["n_days", "pop_size", "pop_infected", "quar_period"]
sample[int_cols] = sample[int_cols].astype("int")

sample.to_csv("results/compare_interventions_basic/runs/latin_hypercube.csv")

test = sample['pop_size'] > sample['pop_infected']
assert all(test)