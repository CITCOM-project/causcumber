from functools import reduce as fold
from behave import use_step_matcher
from scipy import stats
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

import dag_steps
from covasim_utils import avg_age, household_size


def add_constraint(context, constraint):
    print("Adding constraint", constraint)
    context.scenario.modelling_scenario.constraints.add(constraint)


@given("average_age = average_ages(location)")
def step_impl(context):
    context.supported_countries = sorted(
        [
            h
            for h in covasim.data.country_age_data.data
            if h in covasim.data.household_size_data.data
        ],
        key=lambda x: avg_age(x),
    )
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


@given("{v1} in {set}")
def step_impl(context, v1, set):
    set = eval(set)
    var = context.scenario.modelling_scenario.variables[v1]
    # rel_probs = {x: var.distribution.pdf(x) for x in set}

    class custm_gen(stats.rv_discrete):
        vals = dict(enumerate(set))

        def ppf(self, q, *args, **kwds):
            return np.vectorize(self.vals.get)(
                np.round(len(self.vals) * q)
            )

    var.distribution = custm_gen()

    folded = fold(
        lambda acc, x: z3.Or(acc, x),
        [context.scenario.modelling_scenario.variables[v1].z3 == e for e in set],
        False,
    )
    add_constraint(context, z3.simplify(folded))


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


@given(u'pandemic_gets_going')
def step_impl(context):
    add_constraint(context, context.scenario.modelling_scenario.variables.get("pandemic_gets_going").z3)


@given(u'MortalityProb_med')
def step_impl(context):
    add_constraint(context, context.scenario.modelling_scenario.variables.get("MortalityProb_med").z3)


mutations = {
    "increase": lambda x, x_prime: x_prime == (x*2),
    "decrease": lambda x, x_prime: x_prime == (x/2),
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
    "move to the right": Positive(),
    "move to the left": Negative(),
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