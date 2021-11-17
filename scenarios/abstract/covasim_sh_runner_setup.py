#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Nov  3 07:21:59 2021

@author: michael
"""

import pandas as pd
import random
import os

runfile = "all_countries"
n_runs = 3
fuzz = False

data = pd.read_csv(
    f"results/compare_interventions_basic/runs/{runfile}.csv", index_col=0
)


def fuzz_param(param, prob=0.8, is_prob=False):
    if random.random() > prob:
        return param
    if isinstance(param, str):
        return param
    if isinstance(param, int):
        return round(param + (random.uniform(-0.5, 0.5) * param))
    if isinstance(param, float):
        p = param + (random.uniform(-0.5, 0.5) * param)
        if is_prob:
            if p < 0:
                p = abs(p)
            if p > 1:
                p = 1.0 / p
        return p
    raise ValueError(f"Parameter {param} of type {type(param)} could not be fuzzed.")


for column in data:
    if fuzz:
        is_prob = "_prob" in column
        data[column] = [fuzz_param(x, is_prob=is_prob) for x in data[column]]
        if is_prob:
            assert all([x in pd.Interval(0, 1) for x in data[column]])

columns = data.columns

runs = []
for i, run in enumerate(
    data.to_records(index=False),
    start=len(os.listdir(f"results/compare_interventions_basic/data/{runfile}")),
):
    assert len(run) == len(columns), "Num args does not match num values"
    args = [f"--{k} {v}" for k, v in zip(columns, run)]
    runs.append(
        f"python covasim_sh_runner.py --results_file results/compare_interventions_basic/data/{runfile}/run_{i}.csv --n_runs {n_runs} "
        + " ".join(args),
    )


maxjobs = 6

with open(f"results/compare_interventions_basic/runs/{runfile}.sh", "w") as f:
    for i, run in enumerate(runs):
        if i > 0 and i % maxjobs == 0:
            print("wait", file=f)
        print(run, "&", file=f)
