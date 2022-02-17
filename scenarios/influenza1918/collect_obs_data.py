#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Feb 16 09:01:15 2022

@author: michael
"""
import pandas as pd
import lhsmdu
from scipy import stats


def run_influenza1918(runs):
    from OMPython import OMCSessionZMQ

    stats = []

    repeats = 1
    print(runs)
    for i, run in runs.iterrows():
        for repeat in range(repeats):
            params = ",".join([f"{col}={val}" for col, val in run.iteritems()])
            omc = OMCSessionZMQ()
            cmds = [
                'loadFile("model/influenza1918.mo")',
                f'simulate(influenza1918, startTime=0, stopTime=400, numberOfIntervals=400, outputFormat="csv", simflags="-override {params}")',
            ]
            for cmd in cmds:
                answer = omc.sendExpression(cmd)
                if not answer:
                    raise ValueError("\n{}:\n{}".format(cmd, answer))

            df = pd.read_csv("influenza1918_res.csv")
            # df.to_csv(f"results/influenza1918_abstract/influenza1918_res_{repeat}_{i}.csv")
            datum = run.to_dict()
            datum["deceased"] = df["Deceased"].iloc[-1]
            datum["recovered"] = df["Recovered"].iloc[-1]
            datum["peak"] = df["Infectious"].idxmax()
            datum["peak_infectious"] = df["Infectious"].max()
            datum["cases"] = df["TotalInfected"].iloc[-1]
            stats.append(datum)

    data = pd.DataFrame(stats)
    assert len(data) == repeats * len(runs)
    # df.to_csv("results/influenza1918_abstract/influenza1918_res_summary.csv")
    return data


def truncnorm(mu, sigma, lower, upper):
    return stats.truncnorm(
        (lower - mu) / sigma, (upper - mu) / sigma, loc=mu, scale=sigma
    )


inputs = dict(
    MortalityProb=truncnorm(0.01, 0.005, 0, 1),
    Infected=truncnorm(1000, 100, 500, 1500),
    MortalityTime=truncnorm(1, 0.5, 2, 6),
    TransmissionProb=truncnorm(0.1, 0.05, 0.01, 1),
    IncubationTime=truncnorm(3, 1.5, 1, 5),
    RecoveryTime=truncnorm(2.5, 1.25, 1, 5),
    EncounterRate=truncnorm(4, 2, 1, 10),
)

for sample_size in [1000]:
    seed = 0
    lhsmdu.setRandomSeed(seed)
    samples = pd.DataFrame(
        lhsmdu.sample(len(inputs), sample_size).T,
        columns=list(inputs),
    )
    # Project the samples to the variables' distributions
    for var in inputs:
        samples[var] = lhsmdu.inverseTransformSample(
            inputs[var], samples[var]
        )
    data = run_influenza1918(samples)
    data["bin"] = 0
    data.to_csv(f"results/influenza1918_abstract/observational_data_{sample_size}.csv")
