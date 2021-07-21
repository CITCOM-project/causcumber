import sys
sys.path.append("../../../../")  # This one's for native running from within steps
sys.path.append("../../../")  # This one's for running `behave` in `features`
sys.path.append("../../")  # This one's for running `behave` in `compare_vaccines`
import pandas as pd
import covasim as cv
from collections import defaultdict
from behave import *
from pydoc import locate
from behave_utils import table_to_dict
from covasim_utils import run_covasim_by_week, save_results_df
from causcumber_utils import run_dowhy, draw_connected_repeating_unit, iterate_repeating_unit

use_step_matcher("re")

# If we run behave inside compare_vaccines, then we need the results path to be in there
# RESULTS_PATH = "scenarios/compare_vaccines/results"
RESULTS_PATH = "results"


@given("a simulation with parameters")
def step_impl(context):
    """
    Populate the params_df with the specified simulation parameters.
    """
    params_dict = defaultdict(list)
    for row in context.table:
        cast_type = locate(row["type"])
        params_dict[row["parameter"]].append(cast_type(row["value"]))
    context.params_df = pd.DataFrame(params_dict)


@given("the following variables are recorded weekly")
def step_impl(context):
    """
    Create a results df to record only the specified values.
    """
    results_dict = table_to_dict(context.table)
    variables_dict = {variable: [] for variable in results_dict["variable"]}
    context.results_df = pd.DataFrame(variables_dict)


@given("a simulation run with no vaccine available")
@given("a baseline run of the model")
def step_impl(context):
    """
    No vaccine is available. Simply run background conditions.
    """
    pass


@when("the model is run")
def step_impl(context):
    """ Run Covasim with params_dict. """
    label = context.scenario.name
    params = context.params_df.to_dict("records")[0]
    desired_outputs = list(context.results_df)
    context.results_df = run_covasim_by_week(label, params, desired_outputs)


@then("the weekly cumulative infections should be reported")
def step_impl(context):
    """ Record the weekly cumulative infections. """
    save_results_df(context.results_df, RESULTS_PATH, "no_vaccination_results")


@then("the cumulative number of infections should be less than the baseline")
def step_impl(context):
    """ Use causal inference to estimate the causal effect of vaccination on cumulative
        infections. """
    # get baseline_results
    baseline_results = pd.read_csv("./results/no_vaccination_results.csv")
    combined_results = pd.concat([context.results_df, baseline_results])
    treatment = context.params_df["interventions"][0].label
    causal_graph = "./dags/causal_dag.dot"

    # DoWhy requires non-continuous data to be numerical
    vaccine_conversion = {"Baseline": 0, treatment: 1}
    combined_results["intervention"] = combined_results["intervention"].replace(vaccine_conversion)
    causal_estimate, confidence_intervals = run_dowhy(combined_results, causal_graph, "intervention",
                                                      "cum_infections_5", 0, 1, verbose=False)
    test_outcome = causal_estimate < 0
    results_dict = {"causal_estimate": causal_estimate, "confidence_intervals": confidence_intervals,
                    "test_passed": test_outcome}
    results_df = pd.DataFrame(results_dict)
    save_results_df(results_df, RESULTS_PATH, "single_vaccine_causal_inference")
    assert test_outcome


@when("the model is run with vaccine (?P<vaccine_name>.+)")
def step_impl(context, vaccine_name):
    """ Instantiate the vaccine objects and make them available to the simulation. """
    # Make an object for each specified vaccine
    vaccinate_days = list(range(context.params_df["n_days"][0]))
    vaccine = cv.vaccinate_prob(vaccine_name, vaccinate_days, label=vaccine_name)
    context.params_df["interventions"] = vaccine
    context.params_df["use_waning"] = True

    model_runs = context.params_df.to_dict("records")
    desired_outputs = list(context.results_df)
    result_dfs = []
    for run_params in model_runs:
        label = run_params["interventions"].label
        params = run_params
        result_dfs.append(run_covasim_by_week(label, params, desired_outputs))
    context.results_df = pd.concat(result_dfs)
    save_results_df(context.results_df, RESULTS_PATH, "single_vaccination_results")


@given("a connected repeating unit")
def step_impl(context):
    inputs = list(context.params_df)
    inputs.append("intervention")
    outputs = list(context.results_df)
    context.repeating_unit = draw_connected_repeating_unit(inputs, outputs)


@when("we prune the following edges")
def step_impl(context):
    for row in context.table:
        context.repeating_unit.delete_edge(row['s1'], row['s2'])


@then("we obtain the causal DAG for 5 weeks")
def step_impl(context):
    dag = iterate_repeating_unit(context.repeating_unit, 5, start=1)
    dag.write("./dags/causal_dag.dot")
