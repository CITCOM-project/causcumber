#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Aug 11 09:07:30 2021

@author: michael
"""
import pandas as pd
import os
import numpy as np
import matplotlib.pyplot as plt

base = "results/estimates"


def get_avg(data, col):
    estimates = np.array([list(df[col]) for df in data]).T.tolist()
    print(estimates)
    estimates = [np.mean(lst) for lst in estimates]
    return estimates


def errorMetric(actual, estimated):
    return [(e-a)/a for e, a in zip(actual, estimated)]


rct_estimates = get_avg([pd.read_csv(f"{base}/rct/{csv}") for csv in os.listdir(f"{base}/rct")], "estimate")

errors = []
failingTests = []

for sample in os.listdir(base):
    if sample == "rct":
        continue
    print(sample)
    data = [pd.read_csv(f"{base}/{sample}/{csv}") for csv in os.listdir(f"{base}/{sample}")]
    estimates = get_avg(data, "estimate")

    # We need to think properly how we handle this
    error = errorMetric(rct_estimates, estimates)
    errors.append(error)
    failingTests.append(np.mean([sum([r=="fail" for r in list(df['result'])]) for df in data]))

errors = [np.sqrt(sum(np.square(e))) for e in errors]

fig, ax1 = plt.subplots()
color = 'tab:red'
ax1.set_xlabel("Number of data points")
ax1.set_ylabel("Estimation error", color=color)
ax1.plot(range(50, 1050, 50), np.log(errors), color=color)
ax1.tick_params(axis='y', labelcolor=color)

ax2 = ax1.twinx()  # instantiate a second axes that shares the same x-axis
color = 'tab:blue'
ax2.set_ylabel("Number of failing tests", color=color)
print(failingTests)
ax2.plot(range(50, 1050, 50), failingTests, color=color)
ax2.tick_params(axis='y', labelcolor=color)
