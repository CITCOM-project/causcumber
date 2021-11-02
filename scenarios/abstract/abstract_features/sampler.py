#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Nov  2 11:03:37 2021

@author: michael
"""
import z3

s = z3.Solver()
with open("background.smt2") as f:
    s = s.from_string("".join(f.readlines()))

print(s)