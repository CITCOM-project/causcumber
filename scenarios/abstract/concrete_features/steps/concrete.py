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


@when("effect modifier values")
def step_impl(context):
    context.effect_modifiers = {
        row["modifier"]: context.types[row["modifier"]](row["value"])
        for row in context.table.rows
    }


@then("the {outcome_var} should {change}")
def step_impl(context, outcome_var, change):
    data = pd.read_csv(f"results/compare_interventions_basic/combinations.csv")
    data["average_age"] = [avg_age(c) for c in data["location"]]

    assert (
        context.treatment_var not in context.effect_modifiers
    ), f"Treatment variable {context.treatment_var} should not be an effect modifier"

    assert (
        outcome_var not in context.effect_modifiers
    ), f"Treatment variable {outcome_var} should not be an effect modifier"

    # print(context.effect_modifiers)
    # for d in context.effect_modifiers:
    #     data = data.loc[data[d] == float(context.effect_modifiers[d])]
    # print(data)

    if len(context.effect_modifiers) > 0:
        bins = (
            data[context.effect_modifiers]
            .to_csv(header=False, index=False)
            .strip()
            .split("\n")
        )
        data["bins"] = bins
        data["bins"] = data["bins"].astype("category")
        bin_of_interest = ",".join(
            [
                str(context.effect_modifiers[x])
                for x in data[context.effect_modifiers].columns
            ]
        )
        assert bin_of_interest in bins, "Bin of interest not in bins"
        effect_estimate = estimate_effect(
            data,
            context.dag_path.replace("_concrete", ""),
            context.treatment_var,
            outcome_var,
            context.control_val,
            context.treatment_val,
            identification=True,
            verbose=True,
            confidence_intervals=True,
            effect_modifiers=["bins"],
            method_name="backdoor.linear_regression",
        )
        print(effect_estimate)

        value = effect_estimate.conditional_estimates[bin_of_interest]
    else:
        effect_estimate = estimate_effect(
            data,
            context.dag_path.replace("_concrete", ""),
            context.treatment_var,
            outcome_var,
            context.control_val,
            context.treatment_val,
            identification=True,
            verbose=True,
            confidence_intervals=True,
            effect_modifiers=context.effect_modifiers,
            method_name="backdoor.linear_regression",
        )
        print(effect_estimate)
        value = estimate.value
    # if effect_estimate.conditional_estimates is not None:
    #     value = None
    #     conditional_estimates = effect_estimate.conditional_estimates.to_dict()
    #     for cat, estimate in conditional_estimates.items():
    #         assert len(cat) == len(context.effect_modifiers)
    #         print(context.effect_modifiers)
    #         in_bin = all(
    #             [
    #                 context.effect_modifiers[name] in interval
    #                 for name, interval in zip(context.effect_modifiers, cat)
    #             ]
    #         )
    #         value = estimate
    #     assert (
    #         value is not None
    #     ), f"Effect modifier values {context.effect_modifiers} do not fall in any of the bins\neffect_estimate.conditional_estimates"
    print("effect_estimate:", value)

    if change == "increase":
        assert 0 < value, f"Expected an increase, i.e. 0 < {value}"
    elif change == "decrease":
        assert 0 > value, f"Expected a decrease 0 > {value}"
    elif change == "remain about the same":
        # Confidence intervals not supported yet for effect modifiers
        confidence_intervals = sorted(
            effect_estimate.get_confidence_intervals(method="bootstrap")
        )
        ci_low = min(confidence_intervals)
        ci_high = max(confidence_intervals)

        print("confidence_intervals:", confidence_intervals)
        print(f"average {outcome_var}:", data[outcome_var].mean())
        assert (ci_low <= 0 <= ci_high) or abs(
            value
        ) < 1, f"Expected 0 to be in range [{ci_low}..{ci_high}] or abs({value}) < 1"
