#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Jul 28 08:27:11 2021

@author: michael
"""
import covasim as cv
import pandas as pd
import random


# Instantiate named covasim interventions with parameters
standardTest = cv.test_prob(
        symp_prob=0.2,
        asymp_prob=0.001,
        symp_quar_prob=1,
        asymp_quar_prob=1
    )


noTest = cv.test_prob(
        symp_prob=0,
        asymp_prob=0,
        symp_quar_prob=0,
        asymp_quar_prob=0
    )


optimalTest = cv.test_prob(
        symp_prob=1,
        asymp_prob=1,
        symp_quar_prob=1,
        asymp_quar_prob=1
    )


def standardTrace(q):
    return cv.contact_tracing(trace_probs={'h': 1, 'w': 0.5,
                                           's': 0.5, 'c': 0.3}, quar_period=q)


def noTrace(q):
    return cv.contact_tracing(trace_probs={'h': 0, 'w': 0,
                                           's': 0, 'c': 0}, quar_period=q)


def optimalTrace(q):
    return cv.contact_tracing(trace_probs={'h': 1, 'w': 1,
                                           's': 1, 'c': 1}, quar_period=q)


# Provide a list of interventions with which to run covasim
interventions = {
    "baseline": lambda _: [],
    "standardTest": lambda _: [standardTest],
    "noTest": lambda _: [noTest],
    "optimalTest": lambda _: [optimalTest],
    "standardTrace": lambda q: [standardTest, standardTrace(q)],
    "noTrace": lambda q: [standardTest, noTrace(q)],
    "optimalTrace": lambda q: [standardTest, optimalTrace(q)],
    "traceNoTest": lambda q: [standardTrace(q)]
}


def params(interventions):
    quar_period = random.randint(0, 20)
    return {
        'quar_period': quar_period,
        'n_days': 84,
        'pop_type': 'hybrid',
        'pop_size': random.randint(1, 5) * (10 ** random.randint(4, 5)),
        'pop_infected': random.randint(0, 200),
        'location': 'UK',
        'interventions': interventions(quar_period)
    }


def chunks(lst, n):
    """Yield successive n-sized chunks from lst."""
    for i in range(0, len(lst), n):
        yield lst[i:i + n]


def aggregate_by_week(data, desired_outputs=None):
    if desired_outputs is None:
        desired_outputs = data.columns
    week_by_week = {k: [] for k in desired_outputs}
    for c in chunks(data, 7):
        for k in week_by_week:
            if k.startswith('new_'):
                week_by_week[k].append(c[k].sum())
            elif k.startswith('n_'):
                week_by_week[k].append(c[k].iloc[-1])
            else:
                week_by_week[k].append(c[k].iloc[0])
    return pd.DataFrame(week_by_week)


def run_covasim_by_week(label, params, desired_outputs, n_runs=10):
    print(" ", params)
    intervention_sim = cv.MultiSim(cv.Sim(pars=params, label=label, verbose=0))
    intervention_sim.run(n_runs=n_runs, verbose=0)
    temporal = []
    for sim in intervention_sim.sims:
        df = sim.to_df()
        quar_period = 14
        for i in sim['interventions']:
            if hasattr(i, "quar_period"):
                quar_period = i.quar_period
        df = df[desired_outputs]
        week_by_week = pd.DataFrame(aggregate_by_week(df, desired_outputs))
        dic = week_by_week.to_dict(orient='list')
        week_dic = {f"{k}_{w+1}": item for k in desired_outputs for w, item in enumerate(dic[k])}
        week_dic['quar_period'] = quar_period
        for k, v in params.items():
            week_dic[k] = v
        temporal.append(week_dic)
    return pd.DataFrame(temporal)


desired_outputs = ['cum_tests', 'n_quarantined', 'n_exposed', 'cum_infections',
                   'cum_symptomatic', 'cum_severe', 'cum_critical', 'cum_deaths']

dfs = []
num_sims = 10
save_head = True
data_path = "results/data.csv"

for i in range(num_sims):
    print(i+1, "of", num_sims)
    for label in interventions:
        print(" ", label)
        df = run_covasim_by_week(label, params(interventions[label]), desired_outputs)
        if save_head:
            df.to_csv(data_path)
            save_head = False
        else:
            df.to_csv(data_path, mode='a', header=False)
