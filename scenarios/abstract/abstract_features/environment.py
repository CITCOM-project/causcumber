""" Set up the environment for compare vaccine features. """
import pandas as pd
from behave import fixture, use_fixture
import os
import re
import covasim
import lhsmdu
import numpy as np
from allpairspy import AllPairs
from itertools import product
import z3
import pandas as pd
from tabulate import tabulate
from scipy import stats

from causal_testing.specification.causal_specification import CausalSpecification, Scenario
from causal_testing.specification.variable import Input
from causal_testing.specification.causal_dag import CausalDAG
from causal_testing.data_collection.data_collector import ExperimentalDataCollector, ObservationalDataCollector
from causal_testing.testing.causal_test_case import CausalTestCase
from causal_testing.testing.causal_test_engine import CausalTestEngine
from causal_testing.testing.estimators import CausalForestEstimator, LinearRegressionEstimator


import sys
sys.path.append("../../../../")  # This one's for native running from within steps
sys.path.append("../../../")  # This one's for running `behave` in `features`
sys.path.append("../../")  # This one's for running `behave` in `compare-inverventions`

from causcumber.causcumber_utils import to_snake_case
from covasim_utils import interventions, avg_age, household_size



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

    context.abstract_tests = []
    context.inputs = set()
    context.meta_variables = set()
    context.modelling_scenarios = set()

    if not os.path.exists(context.results_dir):
        os.makedirs(context.results_dir, exist_ok=True)

    # Deprecated
    # context.solver = z3.Solver()
    # context.z3_variables = {}
    # context.constraints = {}
    # context.background_constraints = set()
    # context.ranges = {}

    # distributions = {
    #     row["parameter"]: eval(row["distribution"])
    #     for row in feature.background.steps[0].table
    # }
    # # TODO: Make the number of samples a configurable parameter
    # context.num_bins = 4
    # lhs = lhsmdu.sample(len(distributions), context.num_bins).T
    # lhs = pd.DataFrame(lhs, columns=sorted(list(distributions)))
    # boundaries = np.arange(0, 1.1, 1.0 / context.num_bins)
    #
    # context.bins = {}
    # for col in lhs:
    #     context.bins[col] = lhsmdu.inverseTransformSample(
    #         distributions[col], boundaries
    #     )
    #     lhs[col] = lhsmdu.inverseTransformSample(distributions[col], lhs[col]).tolist()
    #
    # # Meta variables
    # lhs["average_age"] = [avg_age(country) for country in lhs["location"]]
    # lhs["household_size"] = [household_size(country) for country in lhs["location"]]
    # context.lhs = lhs
    # context.supported_countries = set(lhs["location"].tolist())
    context.supported_countries = ["Poland", "Niger", "Japan"]
    sorted(
        [
            h
            for h in covasim.data.country_age_data.data
            if h in covasim.data.household_size_data.data
        ],
        key=lambda x: avg_age(x),
    )


def before_scenario(context, scenario):
    # context.constraints[scenario.name] = set()
    context.effect_modifiers = []
    scenario.modelling_scenario = Scenario()


def after_scenario(context, scenario):
    context.modelling_scenarios.add(scenario.modelling_scenario)


def before_step(context, step):
    context.background_step = step in context.feature.background.steps


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
    solver, hard_constraints, scenario, treatment_vars, background, treatment_var
):
    solver.push()
    for i, constraint in enumerate(hard_constraints):
        solver.assert_and_track(constraint, str(constraint))
        solver.assert_and_track(
            z3.substitute(constraint, *treatment_vars.items()),
            str(z3.substitute(constraint, *treatment_vars.items())),
        )
        assert (
            solver.check() == z3.sat
        ), f"Unsatisfiable treatment for {scenario}_{i}\n {solver}"

    for k, v in background.items():
        if str(k) != str(treatment_var):
            solver.add_soft(k == v)
        assert (
            solver.check() == z3.sat
        ), f"Satisfiability {solver.check()} for {scenario}\n{solver}\nJust added {k == v}\nUNSAT core: {solver.unsat_core()}"

    # Get the treatment model
    solver.assert_and_track(
        treatment_vars[treatment_var] > treatment_var,
        str(treatment_vars[treatment_var] > treatment_var),
    )
    assert (
        solver.check() == z3.sat
    ), f"Satisfiability {solver.check()} for {scenario}\n{solver}\nJust added treatment {treatment_vars[treatment_var] > treatment_var}\nUNSAT core: {solver.unsat_core()}"

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
    scenario = f"  @{to_snake_case(name.strip().replace('@', '').replace('--', '').replace('.', '_').replace('__', '_'))}\n"
    scenario += "  @" + "\n  @".join(test["tags"]) + "\n"
    scenario += f"  Scenario: {name}\n"
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
                    [("parameter", "type", "value", "bins")] + feature_background,
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


def direct_causes(dag, node):
    return {cause for cause, effect in dag.edges() if effect == node}


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
        print(f"RUN: {i+1}/{len(runs)}")
        for i in range(n_runs):
            run_params = {k: run[k] for k in run.to_dict()}
            testing = cv.test_prob(
                symp_prob=run_params["symp_prob"],
                asymp_prob=run_params["asymp_prob"],
                symp_quar_prob=run_params["symp_quar_prob"],
                asymp_quar_prob=run_params["asymp_quar_prob"],
            )
            tracing = cv.contact_tracing(trace_probs=run_params["trace_probs"])
            run_params["rand_seed"] = i

            filtered_run_params = {
                k: run_params[k] for k in run_params if "_prob" not in k
            }

            print(filtered_run_params)

            sim = cv.Sim(
                interventions=[testing, tracing],
                pop_type="hybrid",
                **filtered_run_params,
            )
            sim.run()
            results = {k: [] for k in desired_outputs}
            results["quar_period"] = []
            df = sim.to_df()
            quar_period = 14
            for i in sim["interventions"]:
                if hasattr(i, "quar_period"):
                    quar_period = i.quar_period
            df = df[desired_outputs]

            for k in desired_outputs:
                results[k].append(df[k].iloc[-1])

            results["quar_period"].append(quar_period)

            data = pd.DataFrame(results)
            for k, v in run_params.items():
                data[k] = [v for _ in range(1)]
            all_runs.append(data)
    return pd.concat(all_runs)


def fit_distribution(data) -> stats.beta:
    """Fits a SciPy distribution to a given set of values.

    :param iterable data: A collection of data values.
    :return: A Beta distribution fitted to the data. TODO: Make this configurable.
    :rtype: stats.beta
    """

    params = stats.beta.fit(data)
    return beta(*params)


def execute_test(scenario, causal_dag, causal_test_case, observational_data_csv_path):
    causal_specification = CausalSpecification(scenario=scenario, causal_dag=causal_dag)
    causal_test_engine = CausalTestEngine(causal_test_case, causal_specification)
    minimal_adjustment_set = causal_test_engine.load_data(observational_data_csv_path, index_col=0)
    treatment_vars = list(causal_test_case.treatment_input_configuration)
    minimal_adjustment_set = minimal_adjustment_set - set([v.name for v in treatment_vars])
    # @andrewc19, why can we only have atomic control/treatment values?
    # I think it'd be good to pass it in as two dicts instead of vars, control, treatment lists
    estimation_model = LinearRegressionEstimator((list(treatment_vars)[0].name,),
                                             [causal_test_case.treatment_input_configuration[v] for v in treatment_vars][0],
                                             [causal_test_case.control_input_configuration[v] for v in treatment_vars][0],
                                             minimal_adjustment_set,
                                             (list(causal_test_case.outcome_variables)[0].name,),
                                             causal_test_engine.scenario_execution_data_df)
    causal_test_result = causal_test_engine.execute_test(estimation_model)
    print(causal_test_case)
    print("   ", causal_test_case.expected_causal_effect.apply(causal_test_result))

def after_feature(context, feature):
    context.dag = CausalDAG(context.dag_path)
    first_pass_tests = []
    first_pass_runs = []
    second_pass_tests = []
    for scenario, abstract_test in context.abstract_tests:
        if all(
            [
                # context.dag.depends_on_outputs(v.name, scenario)
                isinstance(v, Input)
                for v in abstract_test.treatment_variables
            ]
        ):
            concrete_tests, runs = abstract_test.generate_concrete_tests(4)
            first_pass_tests += [(scenario, test) for test in concrete_tests]
            first_pass_runs.append(runs)
        else:
            second_pass_tests.append((scenario, abstract_test))
    assert len(first_pass_runs) > 0, "Must have at least one first pass test."
    first_pass_runs = pd.concat(first_pass_runs)
    data = None

    # TODO: Update to use data_collector
    observational_data_csv_path = f"results/{context.feature.name}.csv"
    if os.path.exists(observational_data_csv_path):
        data = pd.read_csv(observational_data_csv_path)
    else:
        data = run_covasim(first_pass_runs, context.outputs)
        data["average_age"] = [avg_age(c) for c in data["location"]]
        data["household_size"] = [household_size(c) for c in data["location"]]
        data.drop("rand_seed", axis=1)
        data.to_csv(observational_data_csv_path)

    for scenario, test in first_pass_tests:
        execute_test(scenario, context.dag, test, observational_data_csv_path)
    for column in data:
        if column in context.distributions:
            continue
        context.distributions[column] = fit_distribution(data[column])

    for scenario, abstract_test in second_pass_tests:
        concrete_tests, _ = generate_concrete_tests(abstract_test)
        for test in concrete_tests:
            execute_test(scenario, context.dag, test, observational_data_csv_path)


def after_feature_old(context, feature):
    # TODO: Come up with a way of getting all the variables in there so we can
    # get z3 to come up with values for them even if there's no constraints on them
    # TODO: Possibly, we might want to add in soft constraints as we generate
    # models which try to stop duplicate variable values. That'd give us a
    # more diverse spread of values. We should look into this.
    # TODO: How do we generate the "unexpected" values?

    treatment_vars = {
        context.z3_variables[v]: fresh(context, v) for v in context.z3_variables
    }
    for v in treatment_vars.values():
        context.z3_variables[str(v)] = v

    solver = z3.Optimize()
    for b in context.background_constraints:
        solver.assert_and_track(b, str(b))
        solver.assert_and_track(
            z3.substitute(b, *treatment_vars.items()),
            str(z3.substitute(b, *treatment_vars.items())),
        )
    assert solver.check() == z3.sat, "Inconsistent background constraints"

    for k, v in treatment_vars.items():
        solver.add_soft(k == v, weight=2)

    background = {}
    tests = []
    runs = []

    for t in context.abstract_tests:
        scenario = t["scenario"]
        treatment_var = context.z3_variables[t["treatment_var"]]
        constraints = context.constraints[scenario]

        parameters = context.lhs[[str(m) for m in t["effect_modifiers"]]]
        parameters.insert(0, str(treatment_var), context.lhs[str(treatment_var)])
        parameters.insert(
            1, str(treatment_vars[treatment_var]), context.lhs[str(treatment_var)]
        )

        def filter_func(row):
            if len(row) >= 2:
                return t["mutation"](row[0], row[1])
            return True

        pairwise_tests = pd.DataFrame(
            AllPairs(parameters.values.T.tolist(), filter_func=filter_func),
            columns=parameters.columns,
        )

        for inx, row in pairwise_tests.iterrows():
            solver.push()
            for col in parameters.columns:
                solver.add_soft(context.z3_variables[col] == row[col])
            control_run, treatment_run = mk_test_case(
                solver,
                constraints,
                scenario,
                treatment_vars,
                background,
                treatment_var,
            )
            solver.pop()

            if background == {}:
                background = control_run

            if control_run not in runs:
                runs.append({str(k): v for k, v in control_run.items()})
            if treatment_run not in runs:
                runs.append({str(k): v for k, v in treatment_run.items()})

            test = (inx, t, treatment_var, control_run, treatment_run, background)
            if test not in tests:
                tests.append(test)

    feature_background = [
        (
            str(name),
            context.types[str(name)].__name__,
            str(val),
            context.bins.get(str(name), ""),
        )
        for name, val in background.items()
    ]

    feature_outputs = [
        (output, context.types[output].__name__)
        for output in sorted(list(context.outputs))
    ]

    print(
        f"Feature generated {len(tests)} tests, corresponding to {len(runs)} run configurations"
    )

    output_feature_file(
        f"concrete_features/{context.feature_name}_concrete_new.feature",
        feature.name,
        feature_background,
        feature_outputs,
        [
            format_scenario(
                t,
                f"{t['treatment_var'].strip()}_{t['outcome_var']}_{inx}",
                treatment_var,
                control_run,
                treatment_run,
                background,
            )
            for inx, t, treatment_var, control_run, treatment_run, background, in tests
        ],
    )

    pd.DataFrame(runs).to_csv(
        f"results/{context.feature_name}/runs/runs.csv",
        columns=sorted(list(context.inputs)),
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
