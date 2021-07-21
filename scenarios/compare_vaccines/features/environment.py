""" Set up the environment for compare vaccine features. """
import pandas as pd
from behave import fixture, use_fixture
from collections import defaultdict


@fixture
def set_results_df(context):
    """ Add a results dataframe which stores simulation outputs to context. """
    context.results_df = pd.DataFrame()


@fixture
def set_parameters_df(context):
    """ Add a parameters dictionary which stores simulation parameters to context."""
    context.params_df = pd.DataFrame()


def before_feature(context, feature):
    print(f"Running Feature `{feature.name}`")
    use_fixture(set_results_df, context)
    use_fixture(set_parameters_df, context)


def after_feature(context, feature):
    print(f"Finished Feature `{feature.name}`")
