import pandas as pd
import covasim as cv
import os
from behave import *
from pydoc import locate

import sys
sys.path.append("../../../../") # This one's for native running from within steps
sys.path.append("../../../") # This one's for running `behave` in `features`
sys.path.append("../../") # This one's for running `behave` in `compare-inverventions`

from behave_utils import table_to_dict
from covasim_utils import run_covasim_by_week
from causcumber_utils import run_dowhy, draw_connected_repeating_unit, iterate_repeating_unit

use_step_matcher("parse")

RESULTS_PATH = "scenarios/compare_interventions/results"

# Instantiate named covasim interventions with parameters
intervention = {
    "standardTest": cv.test_prob(
        symp_prob=0.2,
        asymp_prob=0.001,
        symp_quar_prob=1,
        asymp_quar_prob=1
    ),
    "noTest": cv.test_prob(
        symp_prob=0,
        asymp_prob=0,
        symp_quar_prob=0,
        asymp_quar_prob=0
    ),
    "optimalTest": cv.test_prob(
        symp_prob=1,
        asymp_prob=1,
        symp_quar_prob=1,
        asymp_quar_prob=1
    ),
    "standardTrace": cv.contact_tracing(trace_probs={'h': 1, 'w': 0.5, 's': 0.5, 'c': 0.3}, quar_period=14),
    "noTrace": cv.contact_tracing(trace_probs={'h': 0, 'w': 0, 's': 0, 'c': 0}, quar_period=14),
    "optimalTrace": cv.contact_tracing(trace_probs={'h': 1, 'w': 1, 's': 1, 'c': 1}, quar_period=14)
}

# Provide a list of interventions with which to run covasim
interventions = {
    "baseline": [],
    "standardTest": [intervention["standardTest"]],
    "noTest": [intervention["noTest"]],
    "optimalTest": [intervention["optimalTest"]],
    "standardTrace": [intervention["standardTest"], intervention["standardTrace"]],
    "noTrace": [intervention["standardTest"], intervention["noTrace"]],
    "optimalTrace": [intervention["standardTest"], intervention["optimalTrace"]],
    "traceNoTest": [intervention["standardTrace"]]
}


@given("a simulation with parameters")
def step_impl(context):
    """
    Populate the params_dict with the specified simulation parameters.
    """
    for row in context.table:
        cast_type = locate(row["type"])
        context.params_dict[row["parameter"]] = cast_type(row["value"])
        context.types[row["parameter"]] = cast_type
    context.n_weeks = round(context.params_dict['n_days']/7)


@given("the following variables are recorded weekly")
def step_impl(context):
    """
    Create a results df to record only the specified values.
    """
    results_dict = table_to_dict(context.table)
    context.desired_outputs = results_dict['variable']
    for row in context.table:
        context.types[row['variable']] = locate(row['type'])


def write_df(df, fname):
    if not os.path.isfile(fname):
        df.to_csv(fname, header='column_names')
    else:
        df.to_csv(fname, mode='a', header=False)


@then(u'all weekly variables are recorded')
def step_impl(context):
    df = pd.read_csv("results/baseline.csv")
    for week in range(1, round(context.params_dict['n_days']/7)+1):
        for column in context.desired_outputs:
            assert f"{column}_{week}" in df.columns, f"{column}_{week} not recorded"


@given(u'a connected repeating unit')
def step_impl(context):
    inputs = list(context.params_dict.keys())
    inputs.append("intervention")
    context.repeating_unit = draw_connected_repeating_unit(inputs, context.desired_outputs)


@when(u'we prune the following edges')
def step_impl(context):
    for row in context.table:
        context.repeating_unit.delete_edge(row['s1'], row['s2'])


@then(u'we obtain the causal DAG for {n} weeks')
def step_impl(context, n):
    dag = iterate_repeating_unit(context.repeating_unit, int(n), start=1)
    dag.write(f"dags/{context.dotpath}")


def run_covasim(label, params, outputs, results_path):
    if not os.path.exists(results_path):
        r = run_covasim_by_week(
            label,
            {k: v for k, v in params.items()},
            outputs,
            n_runs=10)
        r.to_csv(results_path)

@given(u'we run the model with {treatment_var}={i}')
def step_impl(context, treatment_var, i):
    context.interventions = [i]
    context.treatment_var = treatment_var
    context.control_val = context.types[treatment_var](i) if treatment_var in context.types else i
    params = context.params_dict.copy()
    if treatment_var == "intervention":
        params['interventions'] = interventions[i]
    else:
        params[treatment_var] = i
    run_covasim(i, params, context.desired_outputs, f"results/{i}.csv")


@when(u'we run the model with {treatment_var}={i}')
def step_impl(context, treatment_var, i):
    context.interventions.append(i)
    context.treatment_val = context.types[treatment_var](i) if treatment_var in context.types else i
    params = context.params_dict.copy()
    if treatment_var == "intervention":
        params['interventions'] = interventions[i]
    else:
        params[treatment_var] = i
    run_covasim(i, params, context.desired_outputs, f"results/{i}.csv")


def test(estimate, relationship, ci_low, ci_high):
    if relationship == "<":
        assert estimate < 0 and ci_high < 0, f"Expected estimate < 0, got {ci_low} < {estimate} < {ci_high}"
    elif relationship == "=":
        assert ci_low < 0 < ci_high, f"Expected estimate ~0, got {ci_low} < {estimate} < {ci_high}"
    elif relationship == ">":
        assert estimate > 0 and ci_low > 0, f"Expected estimate > 0, got {ci_low} < {estimate} < {ci_high}"


def preprocess_data(data):
    data['intervention'] = data['intervention'].astype("category")
    data['pop_type'] = data['pop_type'].astype("category")
    data['location'] = data['location'].astype("category")
    if "start_day" in data:
        data['start_day'] = data['start_day'].astype("category")
    return data


@then(u'the {outcome} should be {relationship} {control}')
def step_impl(context, outcome, relationship, control):
    data = pd.concat([pd.read_csv(f"results/{i}") for i in os.listdir("results")])
    data = preprocess_data(data)

    estimate, (ci_low, ci_high) = run_dowhy(
              data=data,
              graph=f"dags/{context.dotpath}",
              treatment_var=context.treatment_var,
              outcome_var=f"{outcome}_{context.n_weeks}",
              control_val=context.control_val,
              treatment_val=context.treatment_val,
              verbose=True)
    test(estimate, relationship, ci_low, ci_high)


@given(u'a control scenario where {treatment_var}={control_val}')
def step_impl(context, treatment_var, control_val):
    context.treatment_var = treatment_var
    context.control_val = context.types[treatment_var](control_val) if treatment_var in context.types else float(control_val) if control_val.isnumeric() else control_val


@when(u'{treatment_var}={treatment_val}')
def step_impl(context, treatment_var, treatment_val):
    if context.treatment_var != treatment_var:
        raise ValueError(f"Specified treatment variable {treatment_var} is not the same as the one in the Given ({context.treatment_var})")
    context.treatment_val = context.types[treatment_var](treatment_val) if treatment_var in context.types else float(treatment_val) if treatment_val.isnumeric() else treatment_val
