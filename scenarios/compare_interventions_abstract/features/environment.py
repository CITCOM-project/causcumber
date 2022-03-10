""" Set up the environment for compare vaccine features. """
import pandas as pd
from behave import fixture, use_fixture
import os
import re
import lhsmdu
import numpy as np
from allpairspy import AllPairs
from itertools import product
import z3
import pandas as pd
from tabulate import tabulate
from scipy import stats
import sys

from causal_testing.specification.causal_specification import CausalSpecification, Scenario
from causal_testing.specification.variable import Input
from causal_testing.specification.causal_dag import CausalDAG
from causal_testing.data_collection.data_collector import ExperimentalDataCollector, ObservationalDataCollector
from causal_testing.testing.causal_test_case import CausalTestCase
from causal_testing.testing.causal_test_engine import CausalTestEngine
from causal_testing.testing.estimators import CausalForestEstimator, LinearRegressionEstimator
from causal_testing.data_collection.data_collector import ObservationalDataCollector

from causcumber.causcumber_utils import to_snake_case

import sys
sys.path.append("../../../../")  # This one's for native running from within steps
sys.path.append("../../../")  # This one's for running `behave` in `features`
sys.path.append("../../")  # This one's for running `behave` in `compare-inverventions`

from covasim_utils import avg_age, household_size # Needed for run_covasim

import logging

logger = logging.getLogger(__name__)

obs_tag_re = re.compile("observational\((\"|')(.+)(\"|')\)")


@fixture
def set_desired_outputs(context):
    """ Add a results dataframe which stores simulation outputs to context. """
    context.outputs = set()


@fixture
def set_parameters_dict(context):
    """ Add a parameters dictionary which stores simulation parameters to context."""
    context.params_dict = {}
    context.types = {}


def print_head(filename):
    if not os.path.exists(os.path.dirname(filename)):
        os.makedirs(os.path.dirname(filename), exist_ok=True)
    with open(filename, "w") as f:
        print(
            "feature_name,scenario_name,treatment_var,outcome_var,control_val,treatment_val,estimate,ci_low,ci_high,relationship,result",
            file=f,
        )


def before_all(context):
    context.z3_types = {int: z3.Int, float: z3.Real, str: z3.String}
    if "estimates" in context.config.userdata:
        context.estimates_file = context.config.userdata["estimates"]
        print_head(context.estimates_file)


def before_feature(context, feature):
    logger.info(f"Running Feature `{feature.name}`")
    use_fixture(set_parameters_dict, context)
    use_fixture(set_desired_outputs, context)
    context.feature_name = to_snake_case(context.feature.name)
    context.dag_path = f"dags/{context.feature_name}.dot"
    context.results_dir = f"results/{context.feature_name}"

    context.abstract_tests = []
    context.inputs = set()
    context.meta_variables = set()
    context.modelling_scenarios = set()

    if not os.path.exists(context.results_dir):
        os.makedirs(context.results_dir, exist_ok=True)

def before_scenario(context, scenario):
    # context.constraints[scenario.name] = set()
    context.effect_modifiers = []
    scenario.modelling_scenario = Scenario()


def after_scenario(context, scenario):
    context.modelling_scenarios.add(scenario.modelling_scenario)


def before_step(context, step):
    context.background_step = step in context.feature.background.steps


def fit_distribution(data) -> stats.beta:
    """Fits a SciPy distribution to a given set of values.

    :param iterable data: A collection of data values.
    :return: A Beta distribution fitted to the data. TODO: Make this configurable.
    :rtype: stats.beta
    """

    params = stats.beta.fit(data)
    return stats.beta(*params)


def run_covasim(runs, desired_outputs, n_runs=3):
    """Runs covasim under the given input configurations.

    :param DataFrame runs: A DataFrame representing the desired run configurations.
    :param iterable desired_outputs: The desired model outputs.
    :return: A DataFrame representing the executed runs.
    :rtype: DataFrame
    """
    import covasim as cv

    all_runs = []
    for i, run in runs.iterrows():
        logger.info(f"RUN: {i+1}/{len(runs)}")
        for i in range(n_runs):
            run_params = {k: run[k] for k in run.to_dict()}
            testing = cv.test_prob(
                symp_prob=run_params["symp_prob"],
                asymp_prob=run_params["asymp_prob"],
                symp_quar_prob=run_params["symp_quar_prob"],
                asymp_quar_prob=run_params["asymp_quar_prob"],
            )
            tracing = cv.contact_tracing(trace_probs=run_params["trace_probs"])

            filtered_run_params = {
                k: run_params[k] for k in run_params if "_prob" not in k and k != "bin"
            }

            sim = cv.Sim(
                interventions=[testing, tracing],
                pop_type="hybrid",
                rand_seed=i,
                **filtered_run_params,
            )
            sim.run()
            results = {k: [] for k in desired_outputs}
            results["quar_period"] = [run_params["quar_period"]]

            df = sim.to_df()
            df = df[desired_outputs]

            for k in desired_outputs:
                results[k].append(df[k].iloc[-1])


            data = pd.DataFrame(results)
            for k, v in run_params.items():
                data[k] = [v for _ in range(1)]
            all_runs.append(data)
        data = pd.concat(all_runs)
        # data["average_age"] = [avg_age(c) for c in data["location"]]
        # data["household_size"] = [household_size(c) for c in data["location"]]
    return data


def execute_test(scenario, causal_dag, causal_test_case, observational_data_csv_path):
    causal_specification = CausalSpecification(scenario=scenario, causal_dag=causal_dag)
    data_collector = ObservationalDataCollector(scenario, observational_data_csv_path)
    causal_test_engine = CausalTestEngine(causal_test_case, causal_specification, data_collector)
    minimal_adjustment_set = causal_test_engine.load_data(index_col=0)
    treatment_vars = list(causal_test_case.treatment_input_configuration)
    minimal_adjustment_set = minimal_adjustment_set - set([v.name for v in treatment_vars])
    # @andrewc19, why can we only have atomic control/treatment values?
    # I think it'd be good to pass it in as two dicts instead of vars, control, treatment lists
    estimation_model = LinearRegressionEstimator((list(treatment_vars)[0].name,),
                                             [causal_test_case.treatment_input_configuration[v] for v in treatment_vars][0],
                                             [causal_test_case.control_input_configuration[v] for v in treatment_vars][0],
                                             minimal_adjustment_set,
                                             (list(causal_test_case.outcome_variables)[0].name,),
                                             causal_test_engine.scenario_execution_data_df,
                                             )
    causal_test_result = causal_test_engine.execute_test(estimation_model)
    test_passes = causal_test_case.expected_causal_effect.apply(causal_test_result)
    if not test_passes:
        logger.error(f"{causal_test_case}\n    FAILED - actual causal effect was {causal_test_result.ci_low()} < {causal_test_result.ate} < {causal_test_result.ci_high()}")
        print(observational_data_csv_path)
    return test_passes

def after_feature(context, feature):
    context.dag = CausalDAG(context.dag_path)
    observational_data_csv_path = f"results/{context.feature.name}.csv"

    first_pass_tests = []
    first_pass_runs = []
    second_pass_tests = []
    failed_tests = 0
    dataframes = []
    num_concrete = int(context.config.userdata['num_concrete']) if "num_concrete" in context.config.userdata else 4

    obs_datapath = context.config.userdata.get("datapath", None)

    for scenario, abstract_test in context.abstract_tests:
        print("=======================================")
        if all(
            [
                # context.dag.depends_on_outputs(v.name, scenario)
                isinstance(v, Input)
                for v in abstract_test.treatment_variables
            ]
        ):
            concrete_tests, runs = abstract_test.generate_concrete_tests(num_concrete)
            first_pass_tests += [(scenario, test) for test in concrete_tests]
            first_pass_runs.append(runs)
            datapath = obs_datapath
            if datapath is None:
                datapath = f"results/{context.feature_name}/{abstract_test.datapath()}"
                data = run_covasim(runs, context.outputs)
                data.to_csv(datapath)
            else:
                data = pd.read_csv(datapath)

            for meta in scenario.metas():
                meta.populate(data)
            data.to_csv(datapath)
            print(data)
            print(datapath)


            groups = {group: data for group, data in data.groupby("bin")}
            for bin, test in enumerate(concrete_tests):
                print("  =====")
                if "rct" in context.config.userdata:
                    groups[bin].to_csv(datapath.replace(".csv", f"_{int(bin)}.csv"))
                    datapath = datapath.replace(".csv", f"_{int(bin)}.csv")
                print(test)
                print(pd.read_csv(datapath, index_col=0))
                pass_ = execute_test(scenario, context.dag, test, datapath)
                if not pass_ and context.config.stop:
                    logger.warn(f"FAILURE\n{scenario}\n{test}\n{datapath}")
                    sys.exit(1)
                failed_tests += not pass_
            dataframes.append(data)
        else:
            second_pass_tests.append((scenario, abstract_test))
    assert len(first_pass_runs) > 0 or os.path.exists(datapath),\
           "Must have at least one first pass test if not using observational data."
    # first_pass_runs = pd.concat(first_pass_runs)
    pd.concat(dataframes).to_csv(observational_data_csv_path)


    # # TODO: Update to use data_collector
    # if os.path.exists(observational_data_csv_path):
    #     data = pd.read_csv(observational_data_csv_path)
    # else:
    #     data = run_influenza1918(first_pass_runs)
    #     for column in data:
    #         data[column] = data[column].astype(context.types[column])
    #     data.to_csv(observational_data_csv_path)

    # for scenario, test in first_pass_tests:
    #     failed_tests += not execute_test(scenario, context.dag, test, observational_data_csv_path)

    for scenario, abstract_test in second_pass_tests:
        for variable in scenario.variables.values():
            if variable.distribution is None:
                variable.distribution = fit_distribution(data[variable.name])
        concrete_tests, _ = abstract_test.generate_concrete_tests(num_concrete)
        for test in concrete_tests:
            pass_ = execute_test(scenario, context.dag, test, observational_data_csv_path)
            if not pass_ and context.config.stop:
                logger.warn(f"FAILURE\n{scenario}\n{test}\n{datapath}")
                sys.exit(1)
            failed_tests += not pass_
    print(f"Results:\n  {failed_tests} out of {len(first_pass_tests) + len(second_pass_tests)} failed.")


def before_tag(context, tag):
    obs_match = obs_tag_re.match(tag)
    if obs_match:
        context.data = pd.read_csv(obs_match.group(2))
    if "data" in context.config.userdata:
        context.data = pd.read_csv(context.config.userdata["data"])
    if "sample" in context.config.userdata and hasattr(context, "data"):
        context.data = context.data.sample(
            int(context.config.userdata["sample"]),
            random_state=int(context.config.userdata.get("seed", None)),
        )
