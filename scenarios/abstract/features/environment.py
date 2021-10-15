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


def mk_solver(assertions):
    s = z3.Solver()
    for name, constraint in assertions.items():
        s.assert_and_track(constraint, name)
    assert s.check() == z3.sat, f"Unsatisfiable solver with core {s.unsat_core()}"
    return s


def tabulate(model, context):
    rows = [(str(name), context.types[str(name)].__name__, str(val)) for name, val in model.items()]
    max_name = max([len(name) for name,_,_ in rows])
    max_type = max([len(type) for _,type,_ in rows])
    max_val = max([len(val) for _,_,val in rows])
    table = "    | " + "parameter".ljust(max_name) + " | " + "type".ljust(max_type) + " | " + "value".ljust(max_val) + " |\n"
    for parameter, dt, val in rows:
        table += "    | " + parameter.ljust(max_name) + " | " + dt.ljust(max_type) + " | " + val.ljust(max_val) + " |\n"
    return table


def cast(type, val):
    """
    Z3 is a menace and has String values be '"string"', i.e. with quotes as PART OF THE STRING so we need to strip those.
    It also has Reals be "numerator/denominator", which python can't convert to floats.
    """
    if type == str:
        return str(val)[1:-1]
    elif type == float:
        return float(str(val.numerator())) / float(str(val.denominator()))

    return type(str(val))


def mutate(solver, context, treatment_var):
    solver.push()
    treatment_val = context.z3_types[context.types[treatment_var]]("treatment__")
    solver.assert_and_track(treatment_val > context.z3_variables[treatment_var], "mutate")
    assert solver.check() == z3.sat, f"Cannot mutate {treatment_var} to get a treatment value"
    treatment_value = cast(context.types[treatment_var], solver.model()[treatment_val])
    solver.pop()
    return treatment_value


def after_feature(context, feature):
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

        # If we have a minimum unsat core, we should be able to add in all but one element and have it be sat
        a = unsat_core[0]
        s = mk_solver({name: assertions[name] for name in assertions if str(name) not in [str(n) for n in unsat_core[1:]]})
        solvers.append((s, [t for t in context.concrete_tests if not str(a).startswith(t['scenario'])]))

        s = mk_solver({name: assertions[name] for name in assertions if str(name) != str(a)})
        solvers.append((s, [t for t in context.concrete_tests if str(a).startswith(t['scenario'])]))

    tests = []
    background = {}
    for s, ts in solvers:
        model = {str(k): cast(context.types[str(k)], s.model()[k]) for k in s.model() if str(k) in context.z3_variables}
        if background == {}:
            background = model
        for t in ts:
            # t['treatment_var'] = next(x for x in s.model() if str(x) == t['treatment_var'])
            test = f"  Scenario: {t['scenario']}\n"
            test += f"    Given we run the model with {t['treatment_var']}={model[t['treatment_var']]}\n"
            for k, v in model.items():
                if v != background[k] and k != t['treatment_var']:
                    test += f"And {k}={v}\n"
            test += f"    When we run the model with {t['treatment_var']}={mutate(s, context, t['treatment_var'])}\n"
            test += f"    Then the {t['outcome_var']} should {t['expected_change']}\n"
            tests.append(test)

    with open(f"features/{context.feature_name}_concrete.feature", 'w') as f:
        print(f"Feature: {context.feature.name} concrete", file=f)
        print("  Background:", file=f)
        print(tabulate(background, context), file=f)
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
