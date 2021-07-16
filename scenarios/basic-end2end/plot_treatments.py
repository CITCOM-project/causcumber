#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Jul  6 10:39:27 2021

@author: michael
"""
import matplotlib.pyplot as plt
import pandas as pd
from gherkin.parser import Parser


parser = Parser()

with open("features/test-trace.feature") as f:
    feature = parser.parse("".join(f.readlines()))['feature']

# get the background
background = feature['children'][0]['background']

# get the scenarios
scenarios = [s['scenario'] for s in feature['children'][1:]]

labels = [background['name']] + [s['name'] for s in scenarios]

transform = {k: v for k, v in enumerate(labels)}

data = pd.read_csv("results/data.csv")

# data['intervention'] = [transform[i] for i in data['intervention']]
print(data)

for t in labels:
    y = data.loc[data['intervention'] == t]['cum_infections']
    print(len(y))
    plt.scatter([t for i in y], y, label=t)

plt.legend(bbox_to_anchor=(1, 1.025), loc='upper left')
plt.xlabel("Intervention")
plt.xticks(rotation=-45, ha="left")
plt.ylabel("cum_deaths")
