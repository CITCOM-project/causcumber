import sys

sys.path.append("../../../../")  # This one's for native running from within steps
sys.path.append("../../../")  # This one's for running `behave` in `features`
sys.path.append("../../")  # This one's for running `behave` in `compare_vaccines`
import pandas as pd
import numpy as np
import covasim as cv
from collections import defaultdict
from behave import *
from pydoc import locate
from behave_utils import table_to_dict
from covasim_utils import run_covasim_by_week, save_results_df
from causcumber.causcumber_utils import run_dowhy, draw_connected_repeating_unit, iterate_repeating_unit

use_step_matcher("re")

# If we run behave inside compare_vaccines, then we need the results path to be in there
# RESULTS_PATH = "scenarios/compare_vaccines/results"
RESULTS_PATH = "results"
N_RUNS = 10


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
    context.outputs = list(context.results_df)


@given("no vaccine is available")
def step_impl(context):
    """
    No vaccine is available. Simply run background conditions.
    """
    if not hasattr(context, "observational_df"):
        label = context.scenario.name
        params = context.params_df.to_dict("records")[0]
        desired_outputs = context.outputs
        context.results_df = run_covasim_by_week(label, params, desired_outputs, n_runs=N_RUNS)
        context.results_df["interventions"] = "none"
        save_results_df(context.results_df, RESULTS_PATH, "no_vaccination_results")


@when("the (?P<vaccine_name>.+) is available")
def step_impl(context, vaccine_name):
    """ Instantiate the vaccine objects and make them available to the simulation. """

    # Make an object for each specified vaccine
    vaccinate_days = list(range(context.params_df["n_days"][0]))
    if "age" in vaccine_name:
        vaccine = cv.vaccinate_prob(vaccine="pfizer", days=vaccinate_days, label="age_restricted_vaccine",
                                    subtarget=vaccinate_by_age)
    else:
        vaccine = cv.vaccinate_prob(vaccine_name, vaccinate_days, label=vaccine_name)
    context.params_df["interventions"] = vaccine
    print(context.params_df["interventions"])
    context.params_df["use_waning"] = True

    if not hasattr(context, "observational_df"):
        run_params = context.params_df.to_dict("records")[0]
        print(run_params)
        desired_outputs = context.outputs
        label = run_params["interventions"]
        params = run_params
        print(params)
        intervention_results_df = run_covasim_by_week(label, params, desired_outputs, n_runs=N_RUNS)
        context.results_df = pd.concat([context.results_df, intervention_results_df])
        # context.results_df["interventions"] = [vaccine.label for vaccine in context.results_df["interventions"]]
        save_results_df(context.results_df, RESULTS_PATH, "single_vaccination_results")


@then("the cumulative number of infections should decrease")
def step_impl(context):
    """ Use causal inference to estimate the causal effect of vaccination on cumulative
        infections. """
    # get baseline_results
    print(context.params_df["interventions"])
    treatment = context.params_df["interventions"][0].label
    causal_graph = "./dags/causal_dag.dot"

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
                    "pop_size": data["pop_size"].values[0],
                    "pop_infected": data["pop_infected"].values[0],
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


@step("add the following edges")
def step_impl(context):
    for row in context.table:
        context.repeating_unit.add_edge(row['s1'], row['s2'])
        print(context.repeating_unit.edges())


@then("we obtain the causal DAG for 5 weeks")
def step_impl(context):
    dag = iterate_repeating_unit(context.repeating_unit, 5, start=1)
    dag.write("./dags/causal_dag.dot")


def vaccinate_by_age(sim):
    """ Make elderly individuals more likely to receive vaccine than younger individuals. This is used to introduce
        confounding by age to the effect of vaccination on cumulative infections.

    :param sim: A Covasim Simulation which this vaccination method should be applied to.
    :return output: A dictionary which maps agents to a vaccination probability based on age.
    """
    import covasim as cv
    import numpy as np
    young = cv.true(sim.people.age < 50)
    middle = cv.true((sim.people.age >= 50) * (sim.people.age < 75))
    old = cv.true(sim.people.age > 75)
    inds = sim.people.uid
    vals = np.ones(len(sim.people))
    vals[young] = 0.1
    vals[middle] = 0.5
    vals[old] = 0.9
    ages = sim.people.age
    vac_probs = [((age + 1) / 100) % 100 for age in ages]
    output = dict(inds=inds, vals=vals)
    return output


@then("the following outcomes should change as follows")
def step_impl(context):
    treatment = context.params_df["interventions"][0].label
    causal_graph = "./dags/causal_dag.dot"

    if hasattr(context, "observational_df"):
        data = context.observational_df.copy()
        data = data[(data["interventions"] == treatment) | (data["interventions"] == "none")]
    else:
        data = context.results_df
        data["interventions"] = [vaccine.label if (vaccine != "none") else vaccine for vaccine in data["interventions"]]

    vaccine_conversion = {"none": 0, treatment: 1}
    data["interventions"] = data["interventions"].replace(vaccine_conversion)
    if hasattr(context, "identification"):
        use_identification = context.identification
    else:
        use_identification = True

    for row in context.table:
        outcome = row["outcome"]
        increase_or_decrease = row["increase_or_decrease"]
        min_change = row["min_change"]
        max_change = row["max_change"]
        causal_estimate, confidence_intervals = run_dowhy(data, causal_graph, "interventions", f"{outcome}_5", 0, 1,
                                                          identification=use_identification, verbose=True,
                                                          method_name="backdoor.linear_regression")

        if increase_or_decrease == "increase":
            test_outcome = int(min_change) < causal_estimate < int(max_change)
        else:
            test_outcome = -1*int(max_change) < causal_estimate < -1*int(min_change)

        results_dict = {"vaccine": [treatment],
                        "outcome": [outcome],
                        "causal_estimate": [causal_estimate],
                        "ci_low": [confidence_intervals[0]],
                        "ci_high": [confidence_intervals[1]],
                        "pop_size": data["pop_size"].values[0],
                        "pop_infected": data["pop_infected"].values[0],
                        "test_passed": [test_outcome]}
        save_results_df(pd.DataFrame(results_dict), RESULTS_PATH, f"{treatment}_vaccine_{outcome}_causal_inference")
        assert test_outcome
