import pandas as pd
import covasim as cv
import os
from behave import *
from pydoc import locate
import causcumber.draw_dag_steps


import sys
sys.path.append("../../../../") # This one's for native running from within steps
sys.path.append("../../../") # This one's for running `behave` in `features`
sys.path.append("../../") # This one's for running `behave` in `compare-inverventions`

from behave_utils import table_to_dict
from covasim_utils import run_covasim_by_week, run_covasim_basic, preprocess_data, interventions,  avg_age, household_size
from causcumber.causcumber_utils import run_dowhy, draw_connected_repeating_unit, iterate_repeating_unit, test, test_bool, draw_connected_dag

import pygraphviz

use_step_matcher("parse")

# @given("a simulation with parameters")
# def step_impl(context):
#     """
#     Populate the params_dict with the specified simulation parameters.
#     """
#     for row in context.table:
#         cast_type = locate(row["type"])
#         parameter = row["parameter"]
#         context.params_dict[parameter] = cast_type(row["value"])
#         context.types[parameter] = cast_type
#         context.z3_variables[parameter] = context.z3Types[cast_type](parameter)


@given("the following variables are recorded {frequency}")
def step_impl(context, frequency):
    """
    Create a results df to record only the specified values.
    """
    context.n_weeks = round(context.params_dict['n_days']/7)
    results_dict = table_to_dict(context.table)
    context.outputs = results_dict['variable']
    for row in context.table:
        context.types[row['variable']] = locate(row['type'])
    context.frequency = frequency


# @then(u'we obtain the causal DAG for {n} weeks')
# def step_impl(context, n):
#     dag = iterate_repeating_unit(context.repeating_unit, int(n), start=1)
#     dag.write(context.dag_path)


def run_covasim(frequency, label, params, outputs, results_path, n_runs=10):
    params['interventions'] = interventions[params['interventions']]
    if not os.path.exists(results_path):
        if frequency == "weekly":
            print("Running covasim by week")
            r = run_covasim_by_week(
                label,
                {k: v for k, v in params.items()},
                outputs,
                n_runs=n_runs)
        else:
            print("Running covasim basic")
            r = run_covasim_basic(
                label,
                {k: v for k, v in params.items()},
                outputs,
                n_runs=n_runs)
        r.to_csv(results_path)

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


def choose_bin(bins, b, types):
    b = [t(x) for t, x in zip(types, b.split(","))]
    bins = [[t(x) for t, x in zip(types, bb.split(","))] for bb in bins]
    distances = [np.linalg.norm(np.array(a) - np.array(b)) for a in bins]
    best_bin = min(zip(bins, distances), key=lambda x: x[1])[0]
    print("Best bin", best_bin)
    return ",".join([str(x) for x in best_bin])


def bin_data(data, effect_modifiers, num_bins):
    return pd.DataFrame(
        {k: pd.cut(data[k], num_bins, include_lowest=True) for k in effect_modifiers}
    )


def assign(datum, assignments):
    for b, label in assignments.items():
        if all([di in bi for di, bi in zip(datum, b)]):
            return label
    raise ValueError(f"Unable to assign a bin for {datum}")


@then("the {outcome_var} should {change}")
def step_impl(context, outcome_var, change):
    data = None
    if hasattr(context, "data"):
        print("Existing data")
        data = context.data
    else:
        print(f"Looking for data in {context.results_dir}")
        data = pd.concat([pd.read_csv(f"{context.results_dir}/{i}", index_col=0) for i in os.listdir(context.results_dir)])
    data = preprocess_data(data)

    data["average_age"] = [avg_age(c) for c in data["location"]]
    data["household_size"] = [household_size(c) for c in data["location"]]

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
        # bins = (
        #     data[context.effect_modifiers]
        #     .to_csv(header=False, index=False)
        #     .strip()
        #     .split("\n")
        # )
        # data["bins"] = bins
        # bin_of_interest = ",".join(
        #     [
        #         str(context.effect_modifiers[x])
        #         for x in data[context.effect_modifiers].columns
        #     ]
        # )

        bins = bin_data(data, context.effect_modifiers, 2)
        labels, levels = pd.factorize(bins.to_records(index=False))
        assignments = {level: label for label, level in enumerate(levels)}
        data["bins"] = labels

        data["bins"] = data["bins"].astype("category")

        datum = [
            context.effect_modifiers[x] for x in data[context.effect_modifiers].columns
        ]
        tests = [(bi, [di in bi for di, bi in zip(datum, bi)]) for bi in assignments]
        bin_of_interest = assignments[max(tests, key=lambda x: sum(x[1]))[0]]
        binteresting_data = data.where(data["bins"] == bin_of_interest).dropna()

        # assert bin_of_interest in bins, "Bin of interest not in bins"

        effect_estimate = estimate_effect(
            binteresting_data,
            context.dag_path.replace("_concrete", ""),
            context.treatment_var,
            outcome_var,
            context.control_val,
            context.treatment_val,
            identification=True,
            verbose=True,
            confidence_intervals=True,
            # effect_modifiers=["bins"],
            method_name="backdoor.linear_regression",
        )
        print(effect_estimate)

        # value = effect_estimate.conditional_estimates[bin_of_interest]
        value = effect_estimate.value

        # value = effect_estimate.conditional_estimates[
        #     choose_bin(
        #         bins,
        #         bin_of_interest,
        #         [context.types[t] for t in data[context.effect_modifiers].columns],
        #     )
        # ]
        print("\n")
        print(f"treatment_var = '{context.treatment_var}'")
        print(f"outcome_var = '{outcome_var}'")
        print(f"control_value = {context.control_val}")
        print(f"treatment_value = {context.treatment_val}")
        print("effect_modifiers =", context.effect_modifiers)
        print("\n")

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
        value = effect_estimate.value
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


# @then(u'the {outcome} should be {relationship} {control}')
# def step_impl(context, outcome, relationship, control):
#     data = None
#     if hasattr(context, "data"):
#         print("Existing data")
#         data = context.data
#     else:
#         print(f"Looking for data in {context.results_dir}")
#         data = pd.concat([pd.read_csv(f"{context.results_dir}/{i}", index_col=0) for i in os.listdir(context.results_dir)])
#     data = preprocess_data(data)
#
#     dag = pygraphviz.AGraph(context.dag_path)
#     assert outcome in dag.nodes(), f"Outcome {outcome} not in graph nodes. Must be one of {dag.nodes()}"
#     assert outcome in data, f"Outcome variable {outcome} not in data. Must be one of {data.columns}."
#
#     estimate, (ci_low, ci_high) = run_dowhy(
#               data=data,
#               graph=context.dag_path,
#               treatment_var=context.treatment_var,
#               outcome_var=outcome,
#               control_val=context.control_val,
#               treatment_val=context.treatment_val,
#               verbose=True,
#               method_name="backdoor.linear_regression")
#     if hasattr(context, "estimates_file"):
#         with open(context.estimates_file, 'a') as f:
#             print(f"{context.feature_name},{context.scenario.name},{context.treatment_var},{outcome},{context.control_val},{context.treatment_val},{estimate},{ci_low},{ci_high},{relationship},{'pass' if test_bool(estimate, relationship, ci_low, ci_high) else 'fail'}", file=f)
#     test(estimate, relationship, ci_low, ci_high)


@given(u'a control scenario where {treatment_var}={control_val}')
def step_impl(context, treatment_var, control_val):
    context.treatment_var = treatment_var
    context.control_val = context.types[treatment_var](control_val) if treatment_var in context.types else float(control_val) if control_val.isnumeric() else control_val


@when(u'{treatment_var}={treatment_val}')
def step_impl(context, treatment_var, treatment_val):
    if context.treatment_var != treatment_var:
        raise ValueError(f"Specified treatment variable {treatment_var} is not the same as the one in the Given ({context.treatment_var})")
    context.treatment_val = context.types[treatment_var](treatment_val) if treatment_var in context.types else float(treatment_val) if treatment_val.isnumeric() else treatment_val


# Test trace basic
# @given(u'a connected DAG')
# def step_impl(context):
#     inputs = list(context.params_dict.keys())
#     context.repeating_unit = draw_connected_dag(inputs, context.outputs)

#
# @then(u'we obtain the causal DAG')
# def step_impl(context):
#     context.repeating_unit.write(context.dag_path)
