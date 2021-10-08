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
from covasim_utils import run_covasim_by_week, run_covasim_basic, preprocess_data, interventions
from causcumber.causcumber_utils import run_dowhy, draw_connected_repeating_unit, iterate_repeating_unit, test, test_bool, draw_connected_dag

import pygraphviz

use_step_matcher("parse")

@given("a simulation with parameters")
def step_impl(context):
    """
    Populate the params_dict with the specified simulation parameters.
    """
    for row in context.table:
        cast_type = locate(row["type"])
        context.params_dict[row["parameter"]] = cast_type(row["value"])
        context.types[row["parameter"]] = cast_type


@given("the following variables are recorded {frequency}")
def step_impl(context, frequency):
    """
    Create a results df to record only the specified values.
    """
    context.n_weeks = round(context.params_dict['n_days']/7)
    results_dict = table_to_dict(context.table)
    context.desired_outputs = results_dict['variable']
    for row in context.table:
        context.types[row['variable']] = locate(row['type'])
    context.frequency = frequency


@then(u'we obtain the causal DAG for {n} weeks')
def step_impl(context, n):
    dag = iterate_repeating_unit(context.repeating_unit, int(n), start=1)
    dag.write(context.dag_path)


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

@given(u'we run the model with {treatment_var}={control_val}')
def step_impl(context, treatment_var, control_val):
    context.treatment_var = treatment_var
    params = context.params_dict.copy()
    params[treatment_var] = control_val
    context.control_val = context.types[treatment_var](control_val) if treatment_var in context.types else control_val
    if not hasattr(context, "data"):
        run_covasim(context.frequency, control_val, params, context.desired_outputs, f"{context.results_dir}/{control_val}.csv")


@when(u'we run the model with {treatment_var}={treatment_val}')
def step_impl(context, treatment_var, treatment_val):
    if context.treatment_var != treatment_var:
        raise ValueError(f"'When' treatment var != {context.treatment_var} previously defined in 'Given' step")
    params = context.params_dict.copy()
    params[treatment_var] = treatment_val
    context.treatment_val = context.types[treatment_var](treatment_val) if treatment_var in context.types else treatment_val
    if not hasattr(context, "data"):
        run_covasim(context.frequency, treatment_val, params, context.desired_outputs, f"{context.results_dir}/{treatment_val}.csv")


@then(u'the {outcome} should be {relationship} {control}')
def step_impl(context, outcome, relationship, control):
    data = None
    if hasattr(context, "data"):
        print("Existing data")
        data = context.data
    else:
        print(f"Looking for data in {context.results_dir}")
        data = pd.concat([pd.read_csv(f"{context.results_dir}/{i}", index_col=0) for i in os.listdir(context.results_dir)])
    data = preprocess_data(data)

    dag = pygraphviz.AGraph(context.dag_path)
    assert outcome in dag.nodes(), f"Outcome {outcome} not in graph nodes. Must be one of {dag.nodes()}"
    assert outcome in data, f"Outcome variable {outcome} not in data. Must be one of {data.columns}."

    estimate, (ci_low, ci_high) = run_dowhy(
              data=data,
              graph=context.dag_path,
              treatment_var=context.treatment_var,
              outcome_var=outcome,
              control_val=context.control_val,
              treatment_val=context.treatment_val,
              verbose=True,
              method_name="backdoor.linear_regression")
    if hasattr(context, "estimates_file"):
        with open(context.estimates_file, 'a') as f:
            print(f"{context.feature_name},{context.scenario.name},{context.treatment_var},{outcome},{context.control_val},{context.treatment_val},{estimate},{ci_low},{ci_high},{relationship},{'pass' if test_bool(estimate, relationship, ci_low, ci_high) else 'fail'}", file=f)
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


# Test trace basic
@given(u'a connected DAG')
def step_impl(context):
    inputs = list(context.params_dict.keys())
    context.repeating_unit = draw_connected_dag(inputs, context.desired_outputs)


@then(u'we obtain the causal DAG')
def step_impl(context):
    context.repeating_unit.write(context.dag_path)
