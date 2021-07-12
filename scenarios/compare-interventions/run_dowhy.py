#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Jul  6 11:51:00 2021

@author: michael
"""
import dowhy
import pandas as pd
import warnings
warnings.filterwarnings("ignore", category=RuntimeWarning)

import dowhy.causal_estimators.linear_regression_estimator

scenario_treatments = {'Baseline': 0, 'Standard testing': 1, 'Standard tracing': 2, 'No testing': 3, 'No tracing': 4, 'Trace without test': 5, 'Optimal testing': 6, 'Optimal tracing': 7}

def run_dowhy(datapath, graph, treatment_var, outcome_var, control_val, treatment_val):
    print("Running doWhy with params")
    print("\n".join([f"  {k}: {v}" for k, v in locals().items()]))
    
    # 1. Read in the data
    data = pd.read_csv(datapath)
    
    data['intervention'] = [scenario_treatments.get(i, i) for i in data['intervention']]
    
    data['intervention'] = data['intervention'].astype('category')
    data['pop_type'] = data['pop_type'].astype('category')
    data['location'] = data['location'].astype('category')
    
    # data['start_day'] = data['start_day'].astype('category')
    # data['end_day'] = data['end_day'].astype('category')
    
    # 2. Create a causal model from the data and given graph.
    model = dowhy.CausalModel(
        data=data,
        treatment=treatment_var,
        outcome=outcome_var,
        graph=graph
    )
    
    # 3. Identify causal effect and return target estimands
    identified_estimand = model.identify_effect(method_name="minimal-adjustment", estimand_type="nonparametric-nde")
    
    # 4. Estimate the target estimand using a statistical method.
    # estimate = model.estimate_effect(identified_estimand, method_name="backdoor.linear_regression",
    #                                  control_value=control_val, treatment_value=treatment_val)
    
    estimate = model.estimate_effect(identified_estimand,
                                     method_name="mediation.two_stage_regression",
                                     confidence_intervals=False,
                                     test_significance=False,
                                     control_value=control_val, treatment_value=treatment_val,
                                     method_params = {
                                       'first_stage_model': dowhy.causal_estimators.linear_regression_estimator.LinearRegressionEstimator,
                                       'second_stage_model': dowhy.causal_estimators.linear_regression_estimator.LinearRegressionEstimator
                                     }
                                    )
    
    print("ESTIMATE:", estimate.value)
    return estimate.value

run_dowhy("results/week-by-week.csv", "zigzag-steps.dot", "intervention", "cum_deaths_w6", 0, 3)
# run_dowhy("results/data.csv", "testing.dot", "intervention", "cum_deaths", 1, 2)
# run_dowhy("results/data.csv", "testing.dot", "intervention", "cum_deaths", 2, 3)
