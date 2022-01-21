#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Jan 21 15:31:28 2022

@author: michael
"""
import numpy as np
from sklearn.linear_model import LinearRegression
import pandas as pd

data = pd.read_csv("results/exp_data/MortalityProbMortalityProb2_deceased_Negative.csv")

X = data[['MortalityProb', 'Infected']]
y = data['deceased']
# X = np.array([[1, 1], [1, 2], [2, 2], [2, 3]])
# y = 1 * x_0 + 2 * x_1 + 3
# y = np.dot(X, np.array([1, 2])) + 3
reg = LinearRegression().fit(X, y)
print(reg.coef_)


treatment = reg.predict([[0.01, 1000]])
control = reg.predict([[0.02, 1000]])
print(treatment-control)
