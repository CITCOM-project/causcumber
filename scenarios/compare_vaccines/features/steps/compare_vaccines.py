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
N_RUNS = 30

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
    context.input_params = list(context.params_df)


@given("the following variables are recorded weekly")
def step_impl(context):
    """
    Create a results df to record only the specified values.
    """
    results_dict = table_to_dict(context.table)
    variables_dict = {variable: [] for variable in results_dict["variable"]}
    context.results_df = pd.DataFrame(variables_dict)
    context.desired_outputs = list(context.results_df)


@given("no vaccine is available")
def step_impl(context):
    """
    No vaccine is available. Simply run background conditions.
    """
    if not hasattr(context, "observational_data"):
        label = context.scenario.name
        params = context.params_df.to_dict("records")[0]
        desired_outputs = context.desired_outputs
        context.results_df = run_covasim_by_week(label, params, desired_outputs, n_runs=N_RUNS)
        context.results_df["interventions"] = "none"
        save_results_df(context.results_df, RESULTS_PATH, "no_vaccination_results")


@when("the (?P<vaccine_name>.+) is available")
def step_impl(context, vaccine_name):
    """ Instantiate the vaccine objects and make them available to the simulation. """

    # Make an object for each specified vaccine
    vaccinate_days = list(range(context.params_df["n_days"][0]))
    vaccine = cv.vaccinate_prob(vaccine_name, vaccinate_days, label=vaccine_name)
    context.params_df["interventions"] = vaccine
    context.params_df["use_waning"] = True

    if not hasattr(context, "observational_df"):
        run_params = context.params_df.to_dict("records")[0]
        desired_outputs = context.desired_outputs
        label = run_params["interventions"].label
        params = run_params
        intervention_results_df = run_covasim_by_week(label, params, desired_outputs, n_runs=N_RUNS)
        context.results_df = pd.concat([context.results_df, intervention_results_df])
        print(context.results_df["interventions"])
        # context.results_df["interventions"] = [vaccine.label for vaccine in context.results_df["interventions"]]
        save_results_df(context.results_df, RESULTS_PATH, "single_vaccination_results")


@then("the cumulative number of infections should decrease")
def step_impl(context):
    """ Use causal inference to estimate the causal effect of vaccination on cumulative
        infections. """
    # get baseline_results
    treatment = context.params_df["interventions"][0].label
    causal_graph = "./dags/simple_confounding_dag.dot"

    if hasattr(context, "observational_df"):
        data = context.observational_df.copy()
        data = data[(data["interventions"] == treatment) | (data["interventions"] == "none")]
    else:
        data = context.results_df
        # Convert the vaccine object to its label
        # data["interventions"] = [vaccine.label if (vaccine != "none") else vaccine for vaccine in data["interventions"]]

    # DoWhy requires categorical data to be numerical
    vaccine_conversion = {"none": 0, treatment: 1}
    print(data["interventions"])
    data["interventions"] = data["interventions"].replace(vaccine_conversion)
    if hasattr(context, "identification"):
        use_identification = context.identification
    else:
        use_identification = True
    causal_estimate, confidence_intervals = run_dowhy(data, causal_graph, "interventions", "cum_infections_5", 0, 1,
                                                          identification=use_identification, verbose=True)

    test_outcome = causal_estimate < 0
    results_dict = {"vaccine": [treatment],
                    "causal_estimate": [causal_estimate],
                    "ci_low": [confidence_intervals[0]],
                    "ci_high": [confidence_intervals[1]],
                    "test_passed": [test_outcome]}
    save_results_df(pd.DataFrame(results_dict), RESULTS_PATH, f"{treatment}_vaccine_causal_inference")
    assert test_outcome


@given("a connected repeating unit")
def step_impl(context):
    inputs = list(context.params_df)
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
