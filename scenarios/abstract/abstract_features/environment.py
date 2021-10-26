""" Set up the environment for compare vaccine features. """
import pandas as pd
from behave import fixture, use_fixture
import os
import re

import sys

sys.path.append("../../../../")  # This one's for native running from within steps
sys.path.append("../../../")  # This one's for running `behave` in `features`
sys.path.append("../../")  # This one's for running `behave` in `compare-inverventions`

from causcumber.causcumber_utils import to_snake_case
from covasim_utils import interventions

import z3

import pandas as pd

from tabulate import tabulate

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
    print(f"Running Feature `{feature.name}`")
    use_fixture(set_parameters_dict, context)
    use_fixture(set_desired_outputs, context)
    context.feature_name = to_snake_case(context.feature.name)
    context.dag_path = f"dags/{context.feature_name}.dot"
    context.results_dir = f"results/{context.feature_name}"
    context.solver = z3.Solver()
    context.z3_variables = {}
    context.concrete_tests = []
    context.inputs = set()
    context.meta_variables = set()
    context.constraints = {}
    context.background_constraints = set()

    if not os.path.exists(context.results_dir):
        os.makedirs(context.results_dir, exist_ok=True)


def before_scenario(context, scenario):
    context.constraints[scenario.name] = set()
    context.effect_modifiers = []


def before_step(context, step):
    context.background_step = step in context.feature.background.steps


def mk_solver(named_assertions, anon_assertions):
    s = z3.Solver()
    for constraint in anon_assertions:
        s.add(constraint)
    for name, constraint in named_assertions.items():
        s.assert_and_track(constraint, name)
    assert s.check() == z3.sat, f"Unsatisfiable solver with core {s.unsat_core()}"
    return s


def cast(val):
    if isinstance(val, z3.IntNumRef):
        return val.as_long()
    elif isinstance(val, z3.RatNumRef):
        return float(str(val.numerator())) / float(str(val.denominator()))
    elif isinstance(val, z3.SeqRef) and val.is_string_value():
        return val.as_string()
    raise ValueError(f"Could not cast {val} of type {type(val)} to a native type")


def fresh(context, treatment_var):
    type = context.z3_types[context.types[treatment_var]]
    name = treatment_var
    while name in context.z3_variables:
        name += "_prime"
    return type(name)


def mk_test_case(
    solver, hard_constraints, soft_constraints, scenario, treatment_var, treatment_vars
):
    solver.push()
    for i, constraint in enumerate(hard_constraints):
        solver.assert_and_track(constraint, f"{scenario}_{i}")
        solver.assert_and_track(
            z3.substitute(constraint, *treatment_vars.items()), f"{scenario}_{i}"
        )

    for c in soft_constraints:
        solver.add_soft(c)

    # Get the treatment model
    solver.assert_and_track(treatment_vars[treatment_var] > treatment_var, "Treatment")
    assert solver.check() == z3.sat, f"Unsatisfiable treatment {scenario}_{i}"

    model = solver.model()

    # if background == {}:
    #     background = {
    #         context.z3_variables[str(k)]: cast(model[k])
    #         for k in model
    #         if str(k) in context.types
    #     }

    control_run = {param: cast(model[param]) for param in treatment_vars.keys()}
    # if control_run not in runs:
    #     runs.append(control_run)
    treatment_run = {param: cast(model[param]) for param in treatment_vars.values()}
    # if treatment_run not in runs:
    #     runs.append(treatment_run)
    return control_run, treatment_run


def mk_test_case(
    solver, hard_constraints, scenario, treatment_vars, background, treatment_var
):
    solver.push()
    for i, constraint in enumerate(hard_constraints):
        solver.assert_and_track(constraint, f"{scenario}_{i}")
        solver.assert_and_track(
            z3.substitute(constraint, *treatment_vars.items()), f"{scenario}_{i}"
        )

    for k, v in background.items():
        solver.add_soft(k == v)

    # Get the treatment model
    solver.assert_and_track(treatment_vars[treatment_var] > treatment_var, "Treatment")
    assert solver.check() == z3.sat, f"Unsatisfiable treatment {scenario}_{i}"

    model = solver.model()

    control_run = {param: cast(model[param]) for param in treatment_vars.keys()}
    treatment_run = {
        param: cast(model[prime]) for param, prime in treatment_vars.items()
    }
    solver.pop()
    return control_run, treatment_run


def indent(txt, spaces=4):
    return "\n".join(" " * spaces + ln for ln in txt.splitlines())


def format_scenario(test, name, treatment_var, control_run, treatment_run, background):
    scenario = f"  Scenario: {name}\n"
    scenario += f"    Given we run the model with {treatment_var}={control_run[treatment_var]}\n"
    scenario += f"    When we run the model with {test['treatment_var']}={treatment_run[treatment_var]}\n"
    if test["effect_modifiers"] != []:
        scenario += "    And effect modifier values\n"
        rows = [(k, control_run[k]) for k in test["effect_modifiers"]]
        scenario += indent(tabulate([("modifier", "value")] + rows, tablefmt="orgtbl",))
        scenario += "\n"
    scenario += f"    Then the {test['outcome_var']} should {test['expected_change']}"
    return scenario


def output_feature_file(
    filename, feature_name, feature_background, feature_outputs, tests
):
    with open(filename, "w") as f:
        print(f"Feature: {feature_name} concrete", file=f)
        print("  Background:", file=f)
        print("    Given a simulation with parameters", file=f)
        feature_background.sort()
        print(
            indent(
                tabulate(
                    [("parameter", "type", "value")] + feature_background,
                    tablefmt="orgtbl",
                )
            ),
            file=f,
        )
        print(
            "    And the following variables are recorded at the end of the simulation",
            file=f,
        )
        print(
            indent(
                tabulate([("variable", "type")] + feature_outputs, tablefmt="orgtbl",)
            ),
            file=f,
        )
        print("", file=f)
        print("\n\n".join(tests), file=f)


def after_feature(context, feature):
    # TODO: Come up with a way of getting all the variables in there so we can
    # get z3 to come up with values for them even if there's no constraints on them
    # TODO: Possibly, we might want to add in soft constraints as we generate
    # models which try to stop duplicate variable values. That'd give us a
    # more diverse spread of values. We should look into this.
    # TODO: How do we generate the "unexpected" values?
    solver = z3.Optimize()

    treatment_vars = {
        context.z3_variables[v]: fresh(context, v) for v in context.z3_variables
    }

    for b in context.background_constraints:
        solver.add(b)
        solver.add(z3.substitute(b, *treatment_vars.items()))
    assert solver.check() == z3.sat, "Inconsistent background constraints"

    for k, v in treatment_vars.items():
        solver.add_soft(k == v)

    background = {}
    tests = []
    runs = []

    scenarios = []
    for t in context.concrete_tests:
        scenario = t["scenario"]
        treatment_var = context.z3_variables[t["treatment_var"]]

        # Cheekily add an extra element to imitate a `do while` loop with a for...in
        # @Bob, is there a better way?
        effect_modifiers = [None] + t["effect_modifiers"]

        for modifier in effect_modifiers:
            constraints = context.constraints[scenario]
            if modifier is not None:
                constraints.add(modifier != background[modifier])

            control_run, treatment_run = mk_test_case(
                solver,
                constraints,
                scenario,
                treatment_vars,
                background,
                treatment_var,
            )

            if background == {}:
                background = control_run

            if control_run not in runs:
                runs.append({str(k): v for k, v in control_run.items()})
            if treatment_run not in runs:
                runs.append({str(k): v for k, v in treatment_run.items()})

            name = scenario.strip()
            scenarios.append(name)
            tests.append(
                format_scenario(
                    t,
                    f"{name}.{scenarios.count(name)}",
                    treatment_var,
                    control_run,
                    treatment_run,
                    background,
                )
            )

    feature_background = [
        (str(name), context.types[str(name)].__name__, str(val))
        for name, val in background.items()
    ]

    feature_outputs = [
        (output, context.types[output].__name__)
        for output in sorted(list(context.outputs))
    ]

    output_feature_file(
        f"concrete_features/{context.feature_name}_concrete_new.feature",
        feature.name,
        feature_background,
        feature_outputs,
        tests,
    )

    pd.DataFrame(runs).to_csv(
        f"results/{context.feature_name}/runs.csv", columns=sorted(list(context.inputs))
    )


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
