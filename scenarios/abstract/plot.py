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

from covasim_utils import avg_age
from causcumber.causcumber_utils import estimate_effect

import covasim_sh_runner
from covasim_sh_runner_setup import fuzz


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

dag_path = "dags/compare_interventions_basic.dot"

treatment_var = "average_age"
outcome_var = "cum_quarantined"
control_value = 20
treatment_value = 46
effect_modifiers = {
    "n_days": 66,
    "quar_period": 11,
    "pop_size": 11593,
    "pop_infected": 217,
    "symp_prob": 0.3946267859089032,
    "asymp_prob": 0.5320606162934023,
    "symp_quar_prob": 0.02312927617193368,
    "asymp_quar_prob": 0.5362647235083882,
    "trace_probs": 0.7734426077281416,
}


model_inputs = [
    "n_days",
    "quar_period",
    "pop_size",
    "pop_infected",
    "location",
    "symp_prob",
    "asymp_prob",
    "symp_quar_prob",
    "asymp_quar_prob",
    "trace_probs",
    "rand_seed",
]
desired_outputs = ["cum_tests", "cum_quarantined", "cum_infections", "cum_deaths"]
free_params = set(model_inputs) - set(effect_modifiers)

bins = bin_data(data, effect_modifiers, 3)
labels, levels = pd.factorize(bins.to_records(index=False))
assignments = {level: label for label, level in enumerate(levels)}
data["bins"] = labels
data["bins"] = data["bins"].astype("category")

effect_estimate = estimate_effect(
    data,
    dag_path,
    treatment_var,
    outcome_var,
    control_value,
    treatment_value,
    identification=True,
    verbose=False,
    confidence_intervals=True,
    effect_modifiers=["bins"],
    method_name="backdoor.linear_regression",
)

datum = [effect_modifiers[x] for x in data[effect_modifiers].columns]
tests = [(bi, [di in bi for di, bi in zip(datum, bi)]) for bi in assignments]
bin_of_interest = assignments[max(tests, key=lambda x: sum(x[1]))[0]]


levels_of_interest = [k for k, v in assignments.items() if v == bin_of_interest]
assert len(levels_of_interest) == 1, "Too many levels of interest"
level_of_interest = {
    c: l for c, l in zip(data[effect_modifiers].columns, levels_of_interest[0])
}


#%%
extra_points = 10

extra_data = {k: [] for k in model_inputs + desired_outputs}

extra_data[treatment_var] = [
    fuzz(x, is_prob="_prob" in treatment_var)
    for x in np.random.choice(
        [treatment_value, control_value], size=extra_points
    ).tolist()
]
for k in free_params:
    extra_data[k] = np.random.choice(data[k], size=extra_points).tolist()

for i in range(extra_points):
    run_params = {
        k: sample(i, post=lambda x: data.dtypes[k].type(x))
        for k, i in level_of_interest.items()
    }
    run_params["verbose"] = 0
    for k in free_params:
        run_params[k] = extra_data[k][i]
    run_data = covasim_sh_runner.run_covasim(run_params, 1, desired_outputs,)
    for k in run_data:
        if (k in desired_outputs or k in model_inputs) and k not in free_params:
            extra_data[k] += list(run_data[k])

extra_data = pd.DataFrame(extra_data, columns=data.columns)
extra_data["bins"] = bin_of_interest
extra_data["average_age"] = [avg_age(c) for c in extra_data["location"]]

extra_data.to_csv("results/compare_interventions_basic/data/extra_data.csv")
data = pd.concat([data, extra_data])
data["bins"] = data["bins"].astype("category")

#%%
plt.scatter(data[treatment_var], data[outcome_var])
binteresting_data = data.where(data["bins"] == bin_of_interest).dropna()
plt.scatter(binteresting_data[treatment_var], binteresting_data[outcome_var])
plt.xlabel(treatment_var)
plt.ylabel(outcome_var)
plt.show()
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
print("Effect estimate:", effect_estimate.conditional_estimates[bin_of_interest])

#%%
new_effect_estimate = estimate_effect(
    data,
    dag_path,
    treatment_var,
    outcome_var,
    control_value,
    treatment_value,
    identification=True,
    verbose=False,
    confidence_intervals=True,
    effect_modifiers=["bins"],
    method_name="backdoor.linear_regression",
)
print(
    "New effect estimate:", new_effect_estimate.conditional_estimates[bin_of_interest]
)
