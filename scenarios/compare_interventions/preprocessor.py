#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Jul  9 09:32:30 2021

@author: michael
"""
import pandas as pd


def chunks(lst, n):
    """Yield successive n-sized chunks from lst."""
    for i in range(0, len(lst), n):
        yield lst[i:i + n]


fname = "data"

data = pd.read_csv(f"results/{fname}.csv")

prefixes = ['cum_', 'rel_', 'test_', 'doubling_']
undesirables = ['vaccin', '_low', '_high', '_naive', 'incidence', 'prevalence',
                'removed', 'r_eff', 'n_preinfectious', 'alive', 'deaths',
                'reinfections', 'n_susceptible', 'n_symptomatic', 'n_severe',
                'n_critical', 'n_recovered', 'n_known_dead', 'new_quarantined',
                'date', 'pop_nabs', 'pop_protection', 'pop_symp_protection',
                'n_infections']

to_keep = ['t', 'new_infections', 'new_infectious', 'new_symptomatic',
       'new_severe', 'new_critical', 'new_recoveries', 'new_tests',
       'new_diagnoses', 'n_exposed', 'n_dead', 'n_diagnosed',
       'n_quarantined', 'pop_type', 'pop_size', 'pop_infected', 'start_day',
       'end_day', 'location', 'quar_period']

# data.drop(columns=[c for c in data.columns if any([c.startswith(p) for p in prefixes]) or any([u in c for u in undesirables])], inplace=True)

data = data[to_keep]

week_by_week = {k:[] for k in to_keep}

for c in chunks(data, 7):
    for k in week_by_week:
        if k.startswith('new_'):
            week_by_week[k].append(c[k].sum())
        elif k.startswith('n_'):
            week_by_week[k].append(c[k].iloc[-1])
        else:
            week_by_week[k].append(c[k].iloc[0])

weekly_data = pd.DataFrame(week_by_week)
weekly_data.to_csv(f"results/{fname}-weekly.csv")