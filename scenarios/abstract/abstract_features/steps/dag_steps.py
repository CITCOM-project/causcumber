from causal_testing.specification.scenario import Scenario
from causal_testing.specification.variable import Input, Output, Meta
from pydoc import locate
import scipy.stats as stats
import covasim
from covasim_utils import avg_age, household_size
from causcumber.causcumber_utils import draw_connected_dag
import re


class countries_gen(stats.rv_discrete):
    supported_countries = [
        h
        for h in covasim.data.country_age_data.data
        if h in covasim.data.household_size_data.data
    ]
    supported_countries.sort(key=lambda x: avg_age(x))
    supported_countries = dict(enumerate(supported_countries))

    def ppf(self, q, *args, **kwds):
        return np.vectorize(self.supported_countries.get)(
            np.round(len(self.supported_countries) * q)
        )


countries = countries_gen()


def populate_average_age(data):
    data["average_age"] = [avg_age(country) for country in data["location"]]


def populate_household_size(data):
    data["average_age"] = [household_size(country) for country in data["location"]]


@given(u"a simulation with parameters")
def step_impl(context):
    for row in context.table:
        var = Input(row["parameter"], locate(row["type"]))
        context.types[row["parameter"]] = locate(row["type"])
        var.distribution = eval(row["distribution"])
        context.scenario.modelling_scenario.variables[row["parameter"]] = var


@given(u"the following meta variables")
def step_impl(context):
    for row in context.table:
        context.scenario.modelling_scenario.variables[row["variable"]] = Meta(
            row["variable"], locate(row["type"]), eval("populate_" + row["variable"]),
        )
        context.types[row["variable"]] = locate(row["type"])


@given(u"the following variables are recorded at the end of the simulation")
def step_impl(context):
    for row in context.table:
        var = Output(row["variable"], locate(row["type"]))
        context.outputs.add(var.name)
        context.scenario.modelling_scenario.variables[row["variable"]] = var
        context.types[row["variable"]] = locate(row["type"])


@given("a connected DAG")
def step_impl(context):
    inputs = context.scenario.modelling_scenario.inputs().union(
        context.scenario.modelling_scenario.metas()
    )
    inputs = [v.name for v in inputs]
    context.repeating_unit = draw_connected_dag(inputs, context.outputs)


@then(u"we obtain the causal DAG")
def step_impl(context):
    context.repeating_unit.write(context.dag_path)


@when("we prune the following edges")
def step_impl(context):
    to_go = set()
    for row in context.table:
        for s1, s2 in context.repeating_unit.edges():
            if re.fullmatch("^" + row["s1"] + "$", s1) and re.fullmatch(
                "^" + row["s2"] + "$", s2
            ):
                to_go.add((s1, s2))
    for s1, s2 in to_go:
        context.repeating_unit.delete_edge(s1, s2)


@when("we add the following edges")
def step_impl(context):
    for row in context.table:
        context.repeating_unit.add_edge(row["s1"], row["s2"])
