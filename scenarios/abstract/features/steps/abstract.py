import causcumber.draw_dag_steps
from functools import reduce as fold
import covasim
from behave import use_step_matcher
import z3


@given(u'{v1} in covasim.data.country_age_data.data')
def step_impl(context, v1):
    v2 = covasim.data.country_age_data.data
    folded = fold(lambda x, acc: z3.Or(acc, x), [context.z3_variables[v1] == e for e in v2], False)
    context.constraints[context.scenario.name].add(folded)

@given(u'{lower} <= {v} <= {upper}')
def step_impl(context, lower, v, upper):
    context.constraints[context.scenario.name].add(context.z3_variables.get(lower, lower) <= context.z3_variables.get(v, v))
    context.constraints[context.scenario.name].add(context.z3_variables.get(v, v) <= context.z3_variables.get(upper, upper))

@given(u'{lower} < {v} <= {upper}')
def step_impl(context, lower, v, upper):
    context.constraints[context.scenario.name].add(context.z3_variables.get(lower, lower) < context.z3_variables.get(v, v))
    context.constraints[context.scenario.name].add(context.z3_variables.get(v, v) <= context.z3_variables.get(upper, upper))

@given(u'{lower} <= {v} < {upper}')
def step_impl(context, lower, v, upper):
    context.constraints[context.scenario.name].add(context.z3_variables.get(lower, lower) <= context.z3_variables.get(v, v))
    context.constraints[context.scenario.name].add(context.z3_variables.get(v, v) < context.z3_variables.get(upper, upper))

@given(u'{v} < {upper}')
def step_impl(context, v, upper):
    context.constraints[context.scenario.name].add(context.z3_variables.get(v, v) < context.z3_variables.get(upper, upper))

@given(u'{v1} >= {v2}')
def step_impl(context, v1, v2):
    context.constraints[context.scenario.name].add(context.z3_variables.get(v1, v1) >= context.z3_variables.get(v2, v2))

@when(u'we increase the {parameter}')
def step_impl(context, parameter):
    context.treatment_var = parameter

@then(u'the {output} should {change}')
def step_impl(context, output, change):
    context.concrete_tests.append({'scenario': context.scenario.name, 'treatment_var': context.treatment_var, 'outcome_var': output, 'expected_change': change})
