#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Mar  1 09:35:21 2022

@author: michael
"""
import scipy.stats as stats
import numpy as np
import covasim as cv
import pandas as pd
import lhsmdu

import sys

sys.path.append("../..")
from covasim_utils import avg_age, household_size, interventions, run_covasim_basic

csv_path = "results/compare_interventions_basic/data.csv"


class countries_gen(stats.rv_discrete):
    supported_countries = [
        h
        for h in cv.data.country_age_data.data
        if h in cv.data.household_size_data.data
    ]
    supported_countries.sort(key=lambda x: avg_age(x))
    supported_countries = dict(enumerate(supported_countries))

    def ppf(self, q, *args, **kwds):
        return np.vectorize(self.supported_countries.get)(
            np.round((len(self.supported_countries) - 1) * q)
        )


class interventions_gen(stats.rv_discrete):
    supported_interventions = dict(enumerate(interventions))

    def ppf(self, q, *args, **kwds):
        return np.vectorize(lambda x: self.supported_interventions.get(x, x))(
            np.round((len(self.supported_interventions) - 1) * q)
        )


distributions = dict(
    interventions=interventions_gen(),
    quar_period=stats.binom(n=25, p=0.5),
    pop_size=stats.betabinom(100000, 15, 100),
    location=countries_gen(),
    pop_infected=stats.betabinom(1000, 1, 5, loc=100),
    n_days=stats.betabinom(60, 2, 3, loc=60),
)

samples = pd.DataFrame(lhsmdu.sample(len(distributions), 200).T, columns=distributions,)
for col in samples.columns:
    samples[col] = lhsmdu.inverseTransformSample(distributions[col], samples[col])

data = []
for _, row in samples.iterrows():
    label = row["interventions"]
    row["interventions"] = interventions[label]
    datum = run_covasim_basic(
        label,
        row,
        [
            "cum_tests",
            "cum_quarantined",
            "cum_infections",
            "cum_symptomatic",
            "cum_severe",
            "cum_critical",
            "cum_deaths",
        ],
        n_runs=2
    )
    data.append(datum)

data = pd.concat(data)
data.to_csv(csv_path)
