import pandas as pd
import covasim as cv
import os
from behave import *
from pydoc import locate
from behave_utils import table_to_dict


use_step_matcher("re")

RESULTS_PATH = "scenarios/compare_vaccines/results"


@given("a simulation with parameters")
def step_impl(context):
    """
    Populate the params_dict with the specified simulation parameters.
    """
    for row in context.table:
        cast_type = locate(row["type"])
        context.params_dict[row["parameter"]] = cast_type(row["value"])


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
    # TODO: How can we get the current scenario name and use it as label for sim?
    m_sim = cv.MultiSim(cv.Sim(pars=context.params_dict, label=context.scenario.name))
    # TODO: Set n_runs and verbose somewhere
    m_sim.run(n_runs=10, verbose=0)
    m_sim.mean()
    results = m_sim.results
    for variable in list(context.results_df):
        context.results_df[variable] = results[variable].values


@then("the weekly cumulative infections should be reported")
def step_impl(context):
    """ Record the weekly cumulative infections. """
    # TODO: Should probably parameterise "cumulative infections" so that we can use this def. for any param
    print(context.results_df)
    if not os.path.exists(RESULTS_PATH):
        os.mkdir(RESULTS_PATH)
    out_path = os.path.join(RESULTS_PATH, "results.csv")
    context.results_df.to_csv(out_path)


@given("the (?P<vaccine_name>.+) vaccine is available")
def step_impl(context, vaccine_name):
    """
    :type context: behave.runner.Context
    :type vaccine_name: str
    """
    # Results df add vaccines available


    raise NotImplementedError(u'STEP: Given the <vaccine_name> vaccine is available')


@then("the cumulative number of infections should be less than the baseline")
def step_impl(context):
    """
    :type context: behave.runner.Context
    """
    # do causal inference
    raise NotImplementedError(u'STEP: Then the cumulative number of infections should be less than the baseline')