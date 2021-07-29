#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Jul 28 08:02:46 2021

@author: michael
"""
import pandas as pd
import os

data = []
for d in os.listdir("results"):
    for f in os.listdir(f"results/{d}"):
        data.append(pd.read_csv(f"results/{d}/{f}"))

data = pd.concat(data)
data.to_csv("results/data.csv")
