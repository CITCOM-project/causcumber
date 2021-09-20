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
import seaborn as sns
from sklearn.metrics import mean_squared_error
from matplotlib.ticker import (MultipleLocator, AutoMinorLocator)
from mpl_axes_aligner import align

min_sample_size = 50
max_sample_size = 2500
increment = 50
base = f"results/estimates-{max_sample_size}"
num_test_cases = 12

def get_avg(data, col):
    estimates = np.array([list(df[col]) for df in data]).T.tolist()
    estimates = [np.mean(lst) for lst in estimates]
    return estimates


def rmse(actual, estimated):
    assert len(actual) == len(estimated), f"Length of actual ({len(actual)}) must equal length of estimated ({len(estimated)})."
    assert (max(estimated) - min(estimated)) > 0, "Difference between max and min must be greater than zero"
    return np.sqrt(mean_squared_error(actual, estimated))/(max(estimated) - min(estimated))


rct_estimates = get_avg([pd.read_csv(f"{base}/rct/{csv}") for csv in os.listdir(f"{base}/rct")], "estimate")
print(rct_estimates)

failingTests = []
estimationErrors = []

for sample in sorted([int(x) for x in os.listdir(base) if x != "rct"]):
    print(sample)
    data = [pd.read_csv(f"{base}/{sample}/{csv}") for csv in os.listdir(f"{base}/{sample}")]

    failed = [sum([r == "fail" for r in list(df['result'])]) for df in data]
    failingTests.append((min(failed), np.mean(failed), max(failed)))

    # We need to think properly how we handle error estimation
    errors = [rmse(rct_estimates, d['estimate']) for d in data]
    print(len(errors))
    estimationErrors.append((min(errors), np.mean(errors), max(errors)))

#%%
# plt.style.use('ggplot')

x = range(min_sample_size, max_sample_size+increment, increment)

fig, ax1 = plt.subplots()
ax2 = ax1.twinx()  # instantiate a second axes that shares the same x-axis
ax2.grid(None)
ax1.set_xticks(range(0, max_sample_size+increment, 5*increment))
ax1.xaxis.set_minor_locator(AutoMinorLocator(4))
ax1.set_xlim([0, max_sample_size])

color = 'tab:red'
ax1.set_xlabel("Number of data points")
ax1.set_ylabel("Estimation error (NRMSE)", color=color)
ax1.tick_params(axis='y', labelcolor=color)
ax1.fill_between(x, [y[0] for y in estimationErrors], [y[2] for y in estimationErrors], color=color, alpha=0.2)
ax1.plot(x, [y[1] for y in estimationErrors], color=color)

color = 'tab:blue'
ax2.set_ylabel("Number of failing tests", color=color)
ax2.tick_params(axis='y', labelcolor=color)
ax2.fill_between(x, [y[0] for y in failingTests], [y[2] for y in failingTests], color=color, alpha=0.2)
ax2.plot(x, [y[1] for y in failingTests], color=color)

ax1.set_yticks(np.linspace(0.19, 0.26, 8))
ax2.set_yticks(np.linspace(0, 7, 8))
ax1.set_ylim([0.185, 0.265])
ax2.set_ylim([0, 7.5])

# # Adjust the plotting range of two y axes
org1 = 0.19  # Origin of first axis
org2 = 0  # Origin of second axis
pos = 0.1  # Position the two origins are aligned
align.yaxes(ax1, org1, ax2, org2, pos)
