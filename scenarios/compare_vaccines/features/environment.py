""" Set up the environment for compare vaccine features. """
import pandas as pd
import os
import sys

sys.path.append("../../")
from covasim_utils import save_results_df
from causcumber_utils import to_snake_case
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


@fixture
def set_observational_df(context, file_name):
    context.observational_df = pd.read_csv(f"./observational_data/{file_name}.csv")


@fixture
def set_identification(context):
    """ Disables identification and makes all estimates purely associational. """
    context.identification = False


def before_feature(context, feature):
    print(f"Running Feature `{feature.name}`")
    use_fixture(set_results_df, context)
    use_fixture(set_parameters_df, context)


def after_feature(context, feature):
    """ Combine individual results data frames and delete old ones. """

    # Get the scenario outline object
    scenario_outline = feature.scenarios[1]
    print(f"Combining results for {scenario_outline.name}")

    # Get the results csv for each vaccine and combine into a single df
    vaccines = [row["vaccine_name"] for row in scenario_outline.examples[0].table.rows]
    vaccine_results_paths = [f"./results/{vaccine}_vaccine_causal_inference.csv" for vaccine in vaccines]
    vaccine_results_dfs = [pd.read_csv(vaccine_results_path) for vaccine_results_path in vaccine_results_paths]
    combined_vaccine_results_df = pd.concat(vaccine_results_dfs)

    # Set output file name and save
    output_name = f"{to_snake_case(scenario_outline.name)}_causal_inference"
    # If using observational data, add observational to file name
    for tag in scenario_outline.tags:
        if "observational" in tag:
            _, file_name = tag.split('.')
            output_name = f"{to_snake_case(scenario_outline.name)}_{file_name}"
    # If disabling identification, add no_adjustment to file name
    for tag in scenario_outline.tags:
        if "disable_identification" in tag:
            output_name = output_name + "_no_adjustment"
    save_results_df(combined_vaccine_results_df, "./results", output_name)

    # Delete the individual csv files
    for old_result_csv in vaccine_results_paths:
        os.remove(old_result_csv)


def before_tag(context, tag):
    """ If a scenario is tagged with observational.X, get X.csv from observational_data
        directory instead of running the model. """
    # If the tag is badly formed, run the model instead
    if tag.startswith("observational") and '.' in tag:
        _, file_name = tag.split('.')
        if file_name:
            use_fixture(set_observational_df, context, file_name)

    if tag.startswith("disable_identification"):
        print("DISABLING IDENTIFICATION")
        use_fixture(set_identification, context)
