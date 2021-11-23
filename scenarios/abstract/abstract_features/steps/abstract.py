from functools import reduce as fold
from behave import use_step_matcher
import numpy as np
import z3

# This is an "unused import" but is needed by `eval` to add in the location
# constraint from the feature file
import covasim

import sys

sys.path.append("../../../../")  # This one's for native running from within steps
sys.path.append("../../../")  # This one's for running `behave` in `features`
sys.path.append("../../")  # This one's for running `behave` in `compare-inverventions`

from covasim_utils import avg_age, household_size


def add_constraint(context, constraint):
    if context.background_step:
        context.background_constraints.add(constraint)
    else:
        context.constraints[context.scenario.name].add(constraint)


@given("{v1} in {set}")
def step_impl(context, v1, set):
    folded = fold(
        lambda acc, x: z3.Or(acc, x),
        [context.modelling_scenario.variables[v1] == e for e in eval(set)],
        False,
    )
    add_constraint(context, folded)


@given("average_age = average_ages(location)")
def step_impl(context):
    avg_ages = {x: avg_age(x) for x in context.supported_countries}

    age = context.modelling_scenario.variables["average_age"].z3
    loc = context.modelling_scenario.variables["location"].z3
    folded = fold(
        lambda acc, x: z3.If(loc == x[0], x[1], acc), list(avg_ages.items()), 0
    )
    add_constraint(context, age == folded)


@given("household_size = household_sizes(location)")
def step_impl(context):
    size = context.modelling_scenario.variables["household_size"].z3
    loc = context.modelling_scenario.variables["location"].z3
    folded = fold(
        lambda acc, x: z3.If(loc == x, household_size(x), acc),
        context.supported_countries,
        0,
    )
    add_constraint(context, size == folded)


@given("{lower} <= {v} <= {upper}")
def step_impl(context, lower, v, upper):
    add_constraint(
        context,
        context.z3_variables.get(lower, lower) <= context.z3_variables.get(v, v),
    )
    add_constraint(
        context,
        context.z3_variables.get(v, v) <= context.z3_variables.get(upper, upper),
    )


@given("{lower} < {v} <= {upper}")
def step_impl(context, lower, v, upper):
    add_constraint(
        context, context.z3_variables.get(lower, lower) < context.z3_variables.get(v, v)
    )
    add_constraint(
        context,
        context.z3_variables.get(v, v) <= context.z3_variables.get(upper, upper),
    )


@given("{lower} <= {v} < {upper}")
def step_impl(context, lower, v, upper):
    add_constraint(
        context,
        context.z3_variables.get(lower, lower) <= context.z3_variables.get(v, v),
    )
    add_constraint(
        context, context.z3_variables.get(v, v) < context.z3_variables.get(upper, upper)
    )


@given("{lower} <= {v}")
def step_impl(context, lower, v):
    add_constraint(
        context,
        context.z3_variables.get(lower, lower) <= context.z3_variables.get(v, v),
    )


@given("{v} < {upper}")
def step_impl(context, v, upper):
    add_constraint(
        context, context.z3_variables.get(v, v) < context.z3_variables.get(upper, upper)
    )


@given("{v} > {upper}")
def step_impl(context, v, upper):
    add_constraint(
        context, context.z3_variables.get(v, v) > context.z3_variables.get(upper, upper)
    )


@given("{v1} >= {v2}")
def step_impl(context, v1, v2):
    add_constraint(
        context, context.z3_variables.get(v1, v1) >= context.z3_variables.get(v2, v2)
    )


mutations = {
    "increase": lambda x, x_prime: x_prime > x,
    "decrease": lambda x, x_prime: x_prime < x,
}

use_step_matcher("re")


@when("we (?P<mutate>\w+) the (?P<parameter>\w+)")
def step_impl(context, mutate, parameter):
    context.treatment_var = parameter
    context.mutation = mutations[mutate]


use_step_matcher("parse")


@when(u"have the effect modifiers")
def step_impl(context):
    context.effect_modifiers = [
        context.z3_variables[row["effect_modifier"]] for row in context.table
    ]


@then("the {output} should {change}")
def step_impl(context, output, change):
    context.abstract_tests.append(
        {
            "scenario": context.scenario.name,
            "treatment_var": context.treatment_var,
            "mutation": context.mutation,
            "outcome_var": output,
            "expected_change": change,
            "effect_modifiers": context.effect_modifiers,
            "tags": context.scenario.tags,
        }
    )
