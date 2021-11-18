#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Oct 22 09:18:59 2021

@author: michael
"""
import matplotlib.pyplot as plt
import pandas as pd
import numpy as np

import sys

sys.path.append("../../../../")  # This one's for native running from within steps
sys.path.append("../../../")  # This one's for running `behave` in `features`
sys.path.append("../../")  # This one's for running `behave` in `compare-inverventions`
sys.path.append(".")  # This one's for running `behave` in `compare-inverventions`

from covasim_utils import avg_age, household_size
from causcumber.causcumber_utils import estimate_effect

import covasim_sh_runner


def choose_bin(bins, b, types):
    b = [t(x) for t, x in zip(types, b.split(","))]
    bins = [[t(x) for t, x in zip(types, bb.split(","))] for bb in bins]
    distances = [np.linalg.norm(np.array(a) - np.array(b)) for a in bins]
    best_bin = min(zip(bins, distances), key=lambda x: x[1])[0]
    print("Desired bin", b)
    print("Closest bin", best_bin)
    return ",".join([str(x) for x in best_bin])


def bin_data(data, effect_modifiers, num_bins):
    return pd.DataFrame(
        {k: pd.cut(data[k], num_bins, include_lowest=True) for k in effect_modifiers}
    )


def assign(datum, assignments):
    for b, label in assignments.items():
        if all([di in bi for di, bi in zip(datum, b)]):
            return label
    raise ValueError(f"Unable to assign a bin for {datum}")


def sample(interval, post=lambda x: x):
    r = np.random.uniform(interval.left, interval.right)
    assert r in interval, f"Generated sample not in {interval}"
    return post(r)


data = pd.read_csv("results/compare_interventions_basic/data/runs.csv", index_col=0)
data["average_age"] = [avg_age(c) for c in data["location"]]
data["household_size"] = [household_size(c) for c in data["location"]]

dag_path = "dags/compare_interventions_basic.dot"

treatment_var = "quar_period"
outcome_var = "cum_quarantined"
control_value = 11
treatment_value = 15
effect_modifiers = {
    "n_days": 90,
    "pop_size": 10000,
    "pop_infected": 295,
    "symp_prob": 0.20143639198171964,
    "asymp_prob": 0.06566236367037942,
    "symp_quar_prob": 0.0456075960115124,
    "asymp_quar_prob": 0.6280014380485361,
    "trace_probs": 0.7734426077281416,
    "household_size": 5.916,
}

bins = bin_data(data, effect_modifiers, 2)
labels, levels = pd.factorize(bins.to_records(index=False))
assignments = {level: label for label, level in enumerate(levels)}
data["bins"] = labels

data["bins"] = data["bins"].astype("category")

datum = [effect_modifiers[x] for x in data[effect_modifiers].columns]
tests = [(bi, [di in bi for di, bi in zip(datum, bi)]) for bi in assignments]
bin_of_interest = assignments[max(tests, key=lambda x: sum(x[1]))[0]]

# assert bin_of_interest in bins, "Bin of interest not in bins"
#%%
effect_estimate = estimate_effect(
    data,
    dag_path.replace("_concrete", ""),
    treatment_var,
    outcome_var,
    control_value,
    treatment_value,
    identification=True,
    verbose=True,
    confidence_intervals=True,
    effect_modifiers=["bins"],
    method_name="backdoor.linear_regression",
)
print(effect_estimate)

value = effect_estimate.conditional_estimates[bin_of_interest]
print("Effect estimate:", effect_estimate.conditional_estimates[bin_of_interest])

#%%
plt.scatter(data[treatment_var], data[outcome_var])
binteresting_data = data.where(data["bins"] == bin_of_interest).dropna()
plt.scatter(binteresting_data[treatment_var], binteresting_data[outcome_var])
plt.xlabel(treatment_var)
plt.ylabel(outcome_var)
plt.show()

levels_of_interest = [k for k, v in assignments.items() if v == bin_of_interest]
assert len(levels_of_interest) == 1, "Too many levels of interest"
level_of_interest = {
    c: l for c, l in zip(data[effect_modifiers].columns, levels_of_interest[0])
}
level_of_interest_str = "\n  " + "\n  ".join(
    [
        f"{c.rjust(15)}: {str(effect_modifiers[c]).rjust(5)} {x}"
        for c, x in level_of_interest.items()
    ]
)
print(f"bin_of_interest: {bin_of_interest} {level_of_interest_str}")
print("Binterest size:", len(binteresting_data))
print(f"{len(assignments)} bins")
print(f"{len(data)} data points")

#%%

new_effect_estimate = estimate_effect(
    binteresting_data,
    dag_path.replace("_concrete", ""),
    treatment_var,
    outcome_var,
    control_value,
    treatment_value,
    identification=True,
    verbose=True,
    confidence_intervals=True,
    method_name="backdoor.linear_regression",
)
print(new_effect_estimate)
