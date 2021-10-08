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

import z3

obs_tag_re = re.compile('observational\(("|\')(.+)("|\')\)')

@fixture
def set_desired_outputs(context):
    """ Add a results dataframe which stores simulation outputs to context. """
    context.desired_outputs = []


@fixture
def set_parameters_dict(context):
    """ Add a parameters dictionary which stores simulation parameters to context."""
    context.params_dict = dict()
    context.types = {}


def print_head(filename):
    if not os.path.exists(os.path.dirname(filename)):
        os.makedirs(os.path.dirname(filename), exist_ok=True)
    with open(filename, 'w') as f:
        print("feature_name,scenario_name,treatment_var,outcome_var,control_val,treatment_val,estimate,ci_low,ci_high,relationship,result", file=f)


def before_all(context):
    context.z3_types = {int: z3.Int, float: z3.Real, str: z3.String}
    if "estimates" in context.config.userdata:
        context.estimates_file = context.config.userdata["estimates"]
        print_head(context.estimates_file)


def before_feature(context, feature):
    print(f"Running Feature `{feature.name}`")
    use_fixture(set_parameters_dict, context)
    context.feature_name = to_snake_case(context.feature.name)
    context.dag_path = f"dags/{context.feature_name}.dot"
    context.results_dir = f"results/{context.feature_name}"
    context.constraints = {}
    context.solver = z3.Solver()
    context.z3_variables = {}
    context.concrete_tests = []

    if not os.path.exists(context.results_dir):
        os.makedirs(context.results_dir, exist_ok=True)


def before_scenario(context, scenario):
    context.constraints[scenario.name] = set()


def after_feature(context, feature):
    print(f"Finished Feature `{feature.name}`")
    s = z3.Solver()
    assertions = {}
    for scenario, constraints in context.constraints.items():
        for i, constraint in enumerate(constraints):
            if constraint not in assertions.values():
                assertions[f"{scenario}_{i}"] = constraint
                s.assert_and_track(constraint, f"{scenario}_{i}")
    sat = s.check()

    solvers = []
    if sat == z3.sat:
        solvers.append((s, context.concrete_tests))
    else:
        unsat_core = s.unsat_core()

        s = z3.Solver()
        a = unsat_core[0]
        for name, constraint in assertions.items():
            if str(name) != str(a):
                s.assert_and_track(constraint, name)
        assert s.check() == z3.sat, f"Unsatisfiable solver with core {s.unsat_core()}"

        solvers.append((s, [t for t in context.concrete_tests if not str(a).startswith(t['scenario'])]))


        for a in unsat_core[1:]:
            s = z3.Solver()
            for name, constraint in assertions.items():
                if str(name) != str(a):
                    s.assert_and_track(constraint, name)
            assert s.check() == z3.sat, f"Unsatisfiable solver with core {s.unsat_core()}"

            solvers.append((s, [t for t in context.concrete_tests if str(a).startswith(t['scenario'])]))

    tests = []
    for s, ts in solvers:
        model = {str(k): s.model()[k] for k in s.model()}
        for t in ts:
            test = f"  Scenario: {t['scenario']}\n"
            test += "    Given we run the model with the following configuration\n"
            test += "    | variable | value |\n"
            for k, v in model.items():
                test += f"    | {k} | {v} |\n"
            test += f"    When we run the model with {t['treatment_var']}={model[t['treatment_var']]}\n"
            test += f"    Then the {t['outcome_var']} should {t['expected_change']}\n"
            tests.append(test)
    with open(f"features/{context.feature_name}_concrete.feature", 'w') as f:
        print(f"Feature: {context.feature.name} concrete", file=f)
        for test in tests:
            print(test, file=f)

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
