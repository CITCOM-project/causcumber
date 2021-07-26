import pandas as pd
import covasim as cv
import os
from behave import *
from pydoc import locate

import sys
sys.path.append("../../../../") # This one's for native running from within steps
sys.path.append("../../../") # This one's for running `behave` in `features`
sys.path.append("../../") # This one's for running `behave` in `compare-inverventions`

from behave_utils import table_to_dict
from covasim_utils import run_covasim_basic, preprocess_data
from causcumber_utils import run_dowhy, draw_connected_dag, test

use_step_matcher("parse")


@given(u'a connected DAG')
def step_impl(context):
    inputs = list(context.params_dict.keys())
    inputs.append("intervention")
    context.repeating_unit = draw_connected_dag(inputs, context.desired_outputs)


@then(u'we obtain the causal DAG')
def step_impl(context):
    context.repeating_unit.write(context.dag_path)
