""" Set up the environment for compare vaccine features. """
import pandas as pd
import os
import sys

sys.path.append("../../")
from covasim_utils import save_results_df
from behave import fixture, use_fixture


@fixture
def set_results_df(context):
    """ Add a results dataframe which stores simulation outputs to context. """
    context.results_df = pd.DataFrame()
    context.desired_outputs = []


@fixture
def set_parameters_df(context):
    """ Add a parameters dictionary which stores simulation parameters to context."""
    context.params_df = pd.DataFrame()
    context.input_params = []


def before_feature(context, feature):
    print(f"Running Feature `{feature.name}`")
    use_fixture(set_results_df, context)
    use_fixture(set_parameters_df, context)


def after_feature(context, feature):
    """ Combine individual results data frames and delete old ones. """
    scenario_outline = feature.scenarios[1]
    print(f"Combining results for {scenario_outline.name}")
    vaccines = [row["vaccine_name"] for row in scenario_outline.examples[0].table.rows]
    vaccine_results_paths = [f"./results/{vaccine}_vaccine_causal_inference.csv" for vaccine in vaccines]
    vaccine_results_dfs = [pd.read_csv(vaccine_results_path) for vaccine_results_path in vaccine_results_paths]
    combined_vaccine_results_df = pd.concat(vaccine_results_dfs)
    save_results_df(combined_vaccine_results_df, "./results", "individual_vaccine_causal_inference")
    # Delete the individual csv files
    for old_result_csv in vaccine_results_paths:
        os.remove(old_result_csv)
