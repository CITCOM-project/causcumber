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
def step_impl(context):
    """
    No vaccine is available. Simply run background conditions.
    """
    pass


@when("the simulation is finished")
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
    causal_graph = "./dags/causal_dag.dot"

    # DoWhy requires categorical data to be numerical
    vaccine_conversion = {"Baseline": 0, "pfizer": 1, "moderna": 2, "az": 3}
    combined_results["intervention"] = combined_results["intervention"].replace(vaccine_conversion)
    combined_results["intervention"] = combined_results["intervention"].astype("category")

    results = defaultdict(list)
    for treatment in combined_results.intervention.unique():
        if treatment != "Baseline":
            causal_estimate, confidence_intervals = run_dowhy(combined_results, causal_graph, "intervention",
                                                              "cum_infections_5", 0, treatment)
            results["treatment"].append(treatment)
            results["control"].append("Baseline")
            results["estimate"].append(causal_estimate)
            results["confidence_intervals"].append(confidence_intervals)

    # Convert categories back to strings
    reverse_vaccine_conversion = dict((v, k) for k, v in vaccine_conversion.items())
    results["treatment"] = [reverse_vaccine_conversion[treatment] for treatment in results["treatment"]]

    # Store test outcome in data frame
    test_outcomes = []
    result_df = pd.DataFrame(results)
    for row in result_df.itertuples():
        if row.treatment != "Baseline":
            test_predicate = row.estimate < 0
        else:
            test_predicate = row.estimate == 0
        if test_predicate:
            test_outcome = "PASS"
        else:
            test_outcome = "FAIL"
        test_outcomes.append(test_outcome)
        assert test_predicate
    result_df["test_outcome"] = test_outcomes
    save_results_df(result_df, RESULTS_PATH, "single_vaccine_causal_inference_weekly")




@given("a single one of the following vaccines is available in the model")
def step_impl(context):
    """ Instantiate the vaccine objects and make them available to the simulation. """
    # Make an object for each specified vaccine (TODO: move this to covasim_utils)
    vaccines = [row["vaccine"] for row in context.table.rows]
    vaccinate_days = list(range(context.params_df["n_days"][0]))
    vaccine_objects = [cv.vaccinate_prob(vaccine, vaccinate_days, label=str(vaccine)) for vaccine in vaccines]

    # For each vaccine object, create a duplicate row in params df
    context.params_df = pd.concat([context.params_df]*len(vaccine_objects))

    # Add vaccines to interventions column in params df
    context.params_df["interventions"] = vaccine_objects

    # Add waning for vaccination to be used
    context.params_df["use_waning"] = True


@when("the simulation is finished for all vaccines")
def step_impl(context):
    """  Run the model for each vaccine. """
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
    print(inputs, outputs)
    context.repeating_unit = draw_connected_repeating_unit(inputs, outputs)


@when("we prune the following edges")
def step_impl(context):
    for row in context.table:
        context.repeating_unit.delete_edge(row['s1'], row['s2'])


@then("we obtain the causal DAG for 5 weeks")
def step_impl(context):
    dag = iterate_repeating_unit(context.repeating_unit, 5, start=1)
    dag.write("./dags/causal_dag.dot")
