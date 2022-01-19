from functools import reduce as fold
from behave import use_step_matcher
import numpy as np
import z3
from causal_testing.generation.abstract_causal_test_case import AbstractCausalTestCase
from causal_testing.testing.causal_test_outcome import Positive, Negative, NoEffect
from causal_testing.specification.variable import Output

# This is an "unused import" but is needed by `eval` to add in the location
# constraint from the feature file
import covasim

import sys

sys.path.append("../../../../")  # This one's for native running from within steps
sys.path.append("../../../")  # This one's for running `behave` in `features`
sys.path.append("../../")  # This one's for running `behave` in `compare-inverventions`

from covasim_utils import avg_age, household_size


def add_constraint(context, constraint):
    context.scenario.modelling_scenario.constraints.add(constraint)


@given("{v1} in {set}")
def step_impl(context, v1, set):
    folded = fold(
        lambda acc, x: z3.Or(acc, x),
        [context.scenario.modelling_scenario.variables[v1].z3 == e for e in eval(set)],
        False,
    )
    add_constraint(context, z3.simplify(folded))


@given("average_age = average_ages(location)")
def step_impl(context):
    avg_ages = {x: avg_age(x) for x in context.supported_countries}

    age = context.scenario.modelling_scenario.variables["average_age"].z3
    loc = context.scenario.modelling_scenario.variables["location"].z3
    folded = fold(
        lambda acc, x: z3.If(loc == x[0], x[1], acc), list(avg_ages.items()), 0
    )
    add_constraint(context, age == folded)


@given("household_size = household_sizes(location)")
def step_impl(context):
    size = context.scenario.modelling_scenario.variables["household_size"].z3
    loc = context.scenario.modelling_scenario.variables["location"].z3
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
        context.scenario.modelling_scenario.variables.get(lower, lower)
        <= context.scenario.modelling_scenario.variables.get(v, v),
    )
    add_constraint(
        context,
        context.scenario.modelling_scenario.variables.get(v, v)
        <= context.scenario.modelling_scenario.variables.get(upper, upper),
    )


@given("{lower} < {v} <= {upper}")
def step_impl(context, lower, v, upper):
    add_constraint(
        context,
        context.scenario.modelling_scenario.variables.get(lower, lower)
        < context.scenario.modelling_scenario.variables.get(v, v),
    )
    add_constraint(
        context,
        context.scenario.modelling_scenario.variables.get(v, v)
        <= context.scenario.modelling_scenario.variables.get(upper, upper),
    )


@given("{lower} <= {v} < {upper}")
def step_impl(context, lower, v, upper):
    add_constraint(
        context,
        context.scenario.modelling_scenario.variables.get(lower, lower)
        <= context.scenario.modelling_scenario.variables.get(v, v),
    )
    add_constraint(
        context,
        context.scenario.modelling_scenario.variables.get(v, v)
        < context.scenario.modelling_scenario.variables.get(upper, upper),
    )


@given("{lower} <= {v}")
def step_impl(context, lower, v):
    add_constraint(
        context,
        context.scenario.modelling_scenario.variables.get(lower, lower)
        <= context.scenario.modelling_scenario.variables.get(v, v),
    )


@given("{v} < {upper}")
def step_impl(context, v, upper):
    add_constraint(
        context,
        context.scenario.modelling_scenario.variables.get(v, v)
        < context.scenario.modelling_scenario.variables.get(upper, upper),
    )


@given("{v} > {upper}")
def step_impl(context, v, upper):
    add_constraint(
        context,
        context.scenario.modelling_scenario.variables.get(v, v)
        > context.scenario.modelling_scenario.variables.get(upper, upper),
    )


@given("{v1} >= {v2}")
def step_impl(context, v1, v2):
    add_constraint(
        context,
        context.scenario.modelling_scenario.variables.get(v1, v1)
        >= context.scenario.modelling_scenario.variables.get(v2, v2),
    )


mutations = {
    "increase": lambda x, x_prime: z3.Or(x_prime > (x*3)/2, x_prime > x + 5),
    "decrease": lambda x, x_prime: z3.Or(x < (x_prime*3)/2, x_prime < x - 5),
}

use_step_matcher("re")


@when("we (?P<mutate>\w+) the (?P<parameter>\w+)")
def step_impl(context, mutate, parameter):
    context.treatment_var = parameter
    context.scenario.modelling_scenario.setup_treatment_variables()
    context.mutation = mutations[mutate](
        context.scenario.modelling_scenario.variables[parameter].z3,
        context.scenario.modelling_scenario.treatment_variables[parameter].z3,
    )


use_step_matcher("parse")


@when("have the effect modifiers")
def step_impl(context):
    context.effect_modifiers = [
        context.scenario.modelling_scenario.variables[row["effect_modifier"]]
        for row in context.table
    ]


changes = {
    "increase": Positive(),
    "decrease": Negative(),
    "remain the same": NoEffect(),
}


@then("the {output} should {change}")
def step_impl(context, output, change):
    scenario = context.scenario.modelling_scenario
    causal_test_case = AbstractCausalTestCase(
        scenario=context.scenario.modelling_scenario,
        intervention_constraints={context.mutation},
        treatment_variables={scenario.variables[context.treatment_var]},
        expected_causal_effect=changes[change],
        outcome_variables={scenario.variables[output]},
        effect_modifiers=None,
    )
    context.abstract_tests.append((scenario, causal_test_case))
