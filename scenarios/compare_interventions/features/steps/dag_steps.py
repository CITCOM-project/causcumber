from causal_testing.specification.scenario import Scenario
from causal_testing.specification.variable import Input, Output, Meta
from pydoc import locate
import scipy.stats as stats
import covasim
from covasim_utils import avg_age, household_size
from causcumber.causcumber_utils import draw_connected_dag
import re
import numpy as np
from behave import given, when, then
import scipy
from enum import Enum
import z3

from scipy import stats


def fixed_value(val):
    return stats.rv_discrete(name=f'value_{val}', values=([val], [1]))

class MP_cat(Enum):
    LOW="LOW"
    MED="MED"
    HIGH="HIGH"

def truncnorm(mu, sigma, lower, upper):
    return stats.truncnorm(
    (lower - mu) / sigma, (upper - mu) / sigma, loc=mu, scale=sigma)


def populate_pandemic_gets_going(data):
    data["pandemic_gets_going"] = data['peak_infectious'] > data['Infected']


def populate_MortalityProb_low(data):
    data["MortalityProb_low"] = [x < 0.001 for x in data['MortalityProb']]


def populate_MortalityProb_med(data):
    data["MortalityProb_med"] = [0.001 < x < 0.1 for x in data['MortalityProb']]


def populate_MortalityProb_high(data):
    data["MortalityProb_high"] = [x > 0.1 for x in data['MortalityProb']]


def populate_MortalityProb_category(data):
    def cat(x):
        if x < 0.001:
            return "LOW"
        elif 0.001 <= x <= 0.1:
            return "MED"
        else:
            return "HIGH"
    data["MortalityProb_category"] = [cat(x) for x in data['MortalityProb']]
    data["MortalityProb_category"] = data["MortalityProb_category"].astype("category")



@given(u"a simulation with parameters")
def step_impl(context):
    context.scenario.modelling_scenario = Scenario()
    for row in context.table:
        var = Input(row["parameter"], locate(row["type"]))
        context.types[row["parameter"]] = locate(row["type"])
        var.distribution = fixed_value(context.types[row["parameter"]](row["value"]))
        context.scenario.modelling_scenario.variables[row["parameter"]] = var


@given(u"the following meta variables")
def step_impl(context):
    for row in context.table:
        context.scenario.modelling_scenario.variables[row["variable"]] = Meta(
            row["variable"], locate(row["type"]), eval("populate_" + row["variable"]),
        )
        context.types[row["variable"]] = locate(row["type"])


@given(u"the following variables are recorded at the end of the simulation")
def step_impl(context):
    for row in context.table:
        var = Output(row["variable"], locate(row["type"]))
        context.outputs.add(var.name)
        context.scenario.modelling_scenario.variables[row["variable"]] = var
        context.types[row["variable"]] = locate(row["type"])


@given("a connected DAG")
def step_impl(context):
    inputs = context.scenario.modelling_scenario.inputs().union(
        context.scenario.modelling_scenario.metas()
    )
    inputs = [v.name for v in inputs]
    context.repeating_unit = draw_connected_dag(inputs, context.outputs)


@then(u"we obtain the causal DAG")
def step_impl(context):
    context.repeating_unit.write(context.dag_path)


@when("we prune the following edges")
def step_impl(context):
    to_go = set()
    for row in context.table:
        for s1, s2 in context.repeating_unit.edges():
            if re.fullmatch("^" + row["s1"] + "$", s1) and re.fullmatch(
                "^" + row["s2"] + "$", s2
            ):
                to_go.add((s1, s2))
    for s1, s2 in to_go:
        context.repeating_unit.delete_edge(s1, s2)


@when("we add the following edges")
def step_impl(context):
    for row in context.table:
        context.repeating_unit.add_edge(row["s1"], row["s2"])
