# from functools import reduce as fold
import covasim
from behave import use_step_matcher
import causcumber.draw_dag_steps
from causcumber.causcumber_utils import estimate_effect
import pandas as pd

import sys

sys.path.append("../../../../")  # This one's for native running from within steps
sys.path.append("../../../")  # This one's for running `behave` in `features`
sys.path.append("../../")  # This one's for running `behave` in `compare-inverventions`

from covasim_utils import avg_age


use_step_matcher("parse")


@given("we run the model with {treatment_var}={control_val}")
def step_impl(context, treatment_var, control_val):
    context.treatment_var = treatment_var
    context.control_val = control_val


@when("we run the model with {treatment_var}={treatment_val}")
def step_impl(context, treatment_var, treatment_val):
    assert (
        context.treatment_var == treatment_var
    ), f"Treatment variable {treatment_var} does not match {context.treatment_var}"
    context.treatment_val = treatment_val


@when("{param}={val}")
def step_impl(context, param, val):
    pass


@then("the {outcome_var} should {change}")
def step_impl(context, outcome_var, change):
    data = pd.read_csv(f"results/compare_interventions_basic/data.csv")
    data["average_age"] = [avg_age(c) for c in data["location"]]

    causal_effect = estimate_effect(
        data,
        context.dag_path.replace("_concrete", ""),
        context.treatment_var,
        outcome_var,
        context.control_val,
        context.treatment_val,
        identification=True,
        verbose=False,
        confidence_intervals=True,
    )

    ci_low, ci_high = sorted(causal_effect.get_confidence_intervals()[0])

    if change == "increase":
        assert (
            0 < ci_low < causal_effect.value < ci_high
        ), f"Expected 0 < {ci_low} < {causal_effect.value} < {ci_high}"
    elif change == "decrease":
        assert (
            0 > ci_high > causal_effect.value > ci_low
        ), f"Expected 0 > {ci_high} > {causal_effect.value} > {ci_low}"
    elif change == "remain about the same":
        assert ci_low <= 0 <= ci_high, "Expected 0 to be in range [{ci_low}..{ci_high}]"
