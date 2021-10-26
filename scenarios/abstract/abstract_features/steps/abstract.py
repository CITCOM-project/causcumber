import causcumber.draw_dag_steps
from functools import reduce as fold
import covasim
from behave import use_step_matcher
import z3
import numpy as np

import sys

sys.path.append("../../../../")  # This one's for native running from within steps
sys.path.append("../../../")  # This one's for running `behave` in `features`
sys.path.append("../../")  # This one's for running `behave` in `compare-inverventions`

from covasim_utils import avg_age

covasim_age_data = {
    k: v
    for k, v in covasim.data.country_age_data.data.items()
    if k in ["UK", "Rwanda", "Japan"]
}


def add_constraint(context, constraint):
    if context.background_step:
        context.background_constraints.add(constraint)
    else:
        context.constraints[context.scenario.name].add(constraint)


@given("{v1} in {set}")
def step_impl(context, v1, set):
    v2 = covasim_age_data
    folded = fold(
        lambda acc, x: z3.Or(acc, x), [context.z3_variables[v1] == e for e in v2], False
    )
    add_constraint(context, folded)


@given("{average_age} = average_ages({location})")
def step_impl(context, average_age, location):
    avg_ages = {x: avg_age(x) for x in covasim_age_data}

    age = context.z3_variables[average_age]
    loc = context.z3_variables[location]
    folded = fold(
        lambda acc, x: z3.If(loc == x[0], x[1], acc), list(avg_ages.items()), 0
    )
    add_constraint(context, age == folded)


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


@when("we increase the {parameter}")
def step_impl(context, parameter):
    context.treatment_var = parameter


@when(u"have the effect modifiers")
def step_impl(context):
    context.effect_modifiers = [
        context.z3_variables[row["effect_modifier"]] for row in context.table
    ]


@then("the {output} should {change}")
def step_impl(context, output, change):
    context.concrete_tests.append(
        {
            "scenario": context.scenario.name,
            "treatment_var": context.treatment_var,
            "outcome_var": output,
            "expected_change": change,
            "effect_modifiers": context.effect_modifiers,
        }
    )
