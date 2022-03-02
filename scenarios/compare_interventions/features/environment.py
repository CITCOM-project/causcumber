""" Set up the environment for compare vaccine features. """
import pandas as pd
from behave import fixture, use_fixture
import os
import re

import sys
sys.path.append("../../../../") # This one's for native running from within steps
sys.path.append("../../../") # This one's for running `behave` in `features`
sys.path.append("../../") # This one's for running `behave` in `compare-inverventions`

from causcumber.causcumber_utils import to_snake_case
from covasim_utils import interventions

obs_tag_re = re.compile('observational\(("|\')(.+)("|\')\)')

def print_head(filename):
    if not os.path.exists(os.path.dirname(filename)):
        os.makedirs(os.path.dirname(filename), exist_ok=True)
    with open(filename, 'w') as f:
        print("feature_name,scenario_name,treatment_var,outcome_var,control_val,treatment_val,estimate,ci_low,ci_high,relationship,result", file=f)


def before_all(context):
    if "estimates" in context.config.userdata:
        context.estimates_file = context.config.userdata["estimates"]
        print_head(context.estimates_file)


def before_feature(context, feature):
    print(f"Running Feature `{feature.name}`")
    context.params_dict = dict()
    context.types = {}
    context.feature_name = to_snake_case(context.feature.name)
    context.dag_path = f"dags/{context.feature_name}.dot"
    context.results_dir = f"results/{context.feature_name}"
    context.observational_data_csv_path = context.results_dir+"/data.csv"
    context.inputs = set()
    context.outputs = set()
    context.meta_variables = set()
    context.frequency = None

    if not os.path.exists(context.results_dir):
        os.makedirs(context.results_dir, exist_ok=True)


def before_scenario(context, scenario):
    context.effect_modifiers = {}


def after_feature(context, feature):
    print(f"Finished Feature `{feature.name}`")


def before_tag(context, tag):
    obs_match = obs_tag_re.match(tag)
    if obs_match:
        context.data = pd.read_csv(obs_match.group(2))
    if 'data' in context.config.userdata:
        context.data = pd.read_csv(context.config.userdata['data'])
    if 'sample' in context.config.userdata and hasattr(context, "data"):
        context.data = context.data.sample(
            int(context.config.userdata['sample']),
            random_state=int(context.config.userdata.get('seed', None))
        )
