import causcumber.draw_dag_steps
from functools import reduce as fold
import covasim
from behave import use_step_matcher


@given(u'{v1} in covasim.data.country_age_data.data')
def step_impl(context, v1):
    v2 = covasim.data.country_age_data.data
    folded = fold(lambda x, acc: f"(or\n  {acc} {x})", [f'(= {v1} "{e}")' for e in list(v2)[:2]], "false")
    context.constraints.add(f"{folded}")

@given(u'{lower} <= {v} <= {upper}')
def step_impl(context, lower, v, upper):
    context.constraints.add(f"(<= {lower} {v})")
    context.constraints.add(f"(<= {v} {upper})")

@given(u'{lower} < {v} <= {upper}')
def step_impl(context, lower, v, upper):
    context.constraints.add(f"(< {lower} {v})")
    context.constraints.add(f"(<= {v} {upper})")

@given(u'{lower} <= {v} < {upper}')
def step_impl(context, lower, v, upper):
    context.constraints.add(f"(<= {lower} {v})")
    context.constraints.add(f"(< {v} {upper})")

@given(u'{v} < {upper}')
def step_impl(context, v, upper):
    context.constraints.add(f"(< {v} {upper})")

@given(u'{v1} >= {v2}')
def step_impl(context, v1, v2):
    context.constraints.add(f"(>= {v1} {v2})")

@when(u'we increase the {parameter}')
def step_impl(context, parameter):
    # Generate a control value of parameter
    # Generate a treatment value parameter > base config
    pass


@then(u'the {output} should {change}')
def step_impl(context, output, change):
    # Output the concrete test case
    # Given we run the model with $parameter=$control_value
    # When we run the model with $parameter=$treatment_value
    # Then the $output should $change
    pass
