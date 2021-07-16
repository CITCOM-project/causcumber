from behave import *
from pydoc import locate
import covasim as cv

use_step_matcher("re")

params_dict = {}
results_dict = {}


@given("a simulation with parameters")
def step_impl(context):
    """
    Populate the params_dict with the specified simulation parameters.
    """
    for row in context.table:
        cast_type = locate(row["type"])
        params_dict[row["parameter"]] = cast_type(row["value"])
    print(params_dict)


@given("the following variables are recorded weekly")
def step_impl(context):
    """
    Create a results dataframe which records only the specified values weekly.
    """
    for row in context.table:
        print(row)


@given("a simulation run with no vaccine available")
def step_impl(context):
    """
    No vaccine is available. Simply run background conditions.
    """
    pass


@when("the simulation is finished")
def step_impl(context):
    """ Run Covasim with params_dict """
    # TODO: How can we get the current scenario name and use it as label for sim?
    m_sim = cv.MultiSim(cv.Sim(pars=params_dict, label=context.scenario.name))
    # TODO: Set n_runs and verbose somewhere
    m_sim.run(n_runs=10, verbose=0)
    m_sim.mean()
    m_sim.plot_result(key="cum_infections")
