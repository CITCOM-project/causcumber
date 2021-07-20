""" Set up the environment for compare vaccine features. """
import pandas as pd
from behave import fixture, use_fixture
import os

@fixture
def set_results_df(context):
    """ Add a results dataframe which stores simulation outputs to context. """
    context.results_df = pd.DataFrame()


@fixture
def set_desired_outputs(context):
    """ Add a results dataframe which stores simulation outputs to context. """
    context.desired_outputs = []


@fixture
def set_parameters_dict(context):
    """ Add a parameters dictionary which stores simulation parameters to context."""
    context.params_dict = dict()


def before_feature(context, feature):
    print(f"Running Feature `{feature.name}`")
    use_fixture(set_results_df, context)
    use_fixture(set_parameters_dict, context)

    if not os.path.exists("results"):
        os.mkdir("results")
    for f in os.listdir("results"):
        if f.endswith(".csv"):
            os.remove(os.path.join("results", f))


def after_feature(context, feature):
    print(f"Finished Feature `{feature.name}`")
