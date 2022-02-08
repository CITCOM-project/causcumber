#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Jan 21 15:31:28 2022

@author: michael
"""
from sklearn.linear_model import LinearRegression
import pandas as pd

from causal_testing.specification.variable import Input, Output
from causal_testing.specification.scenario import Scenario
from causal_testing.specification.causal_specification import CausalSpecification
from causal_testing.specification.causal_dag import CausalDAG
from causal_testing.testing.causal_test_engine import CausalTestEngine
from causal_testing.testing.causal_test_case import CausalTestCase
from causal_testing.testing.causal_test_outcome import Negative
from causal_testing.testing.estimators import LinearRegressionEstimator

observational_data_csv_path = (
    "results/influenza1918_abstract/MortalityTimeMortalityTime2_deceased_Negative.csv"
)
data = pd.read_csv(observational_data_csv_path, index_col=0)

print("Here's the CT framework")

# inputs
Infected = Input("Infected", float)
MortalityProb = Input("MortalityProb", float)
MortalityTime = Input("MortalityTime", float)

# outputs
Deceased = Output("deceased", float)
Recovered = Output("deceased", float)

# Scenario
scenario = Scenario(
    {Infected, MortalityProb, Recovered, MortalityTime},
    set(),
)
scenario.setup_treatment_variables()

causal_dag = CausalDAG("dags/influenza1918_abstract.dot")
causal_specification = CausalSpecification(scenario=scenario, causal_dag=causal_dag)

causal_test_case = CausalTestCase(
    control_input_configuration={MortalityProb: 0.02},
    treatment_input_configuration={MortalityProb: 0.01},
    expected_causal_effect=Negative(),
    outcome_variables={Recovered},
)

causal_test_engine = CausalTestEngine(causal_test_case, causal_specification)
minimal_adjustment_set = causal_test_engine.load_data(
    observational_data_csv_path, index_col=0
)
treatment_vars = list(causal_test_case.treatment_input_configuration)
minimal_adjustment_set = minimal_adjustment_set - set([v.name for v in treatment_vars])
# @andrewc19, why can we only have atomic control/treatment values?
# I think it'd be good to pass it in as two dicts instead of vars, control, treatment lists
estimation_model = LinearRegressionEstimator(
    (list(treatment_vars)[0].name,),
    [causal_test_case.treatment_input_configuration[v] for v in treatment_vars][0],
    [causal_test_case.control_input_configuration[v] for v in treatment_vars][0],
    minimal_adjustment_set,
    (list(causal_test_case.outcome_variables)[0].name,),
    causal_test_engine.scenario_execution_data_df,
)
causal_test_result = causal_test_engine.execute_test(estimation_model)

print(causal_test_result)
# test_passes = causal_test_case.expected_causal_effect.apply(causal_test_result)

print("Here's the bog standard linear regression")
X = data[[x.name for x in scenario.inputs()]]
y = data[[y.name for y in causal_test_case.outcome_variables]]
reg = LinearRegression().fit(X, y)
print(reg.coef_)

treatment_point = pd.DataFrame({"Infected": [1000], "MortalityProb": [0.01], "MortalityTime": [0.722]})
control_point = pd.DataFrame({"Infected": [1000], "MortalityProb": [0.01], "MortalityTime": [1.44]})

treatment = reg.predict(treatment_point)
control = reg.predict(control_point)
print(treatment - control)


