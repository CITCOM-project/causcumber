from behave import given, when, then
from pydoc import locate

import sys
sys.path.append("./")
from causcumber_utils import draw_connected_repeating_unit, iterate_repeating_unit

import re


@given("a simulation with parameters")
def step_impl(context):
    """
    Populate the params_dict with the specified simulation parameters.
    """
    for row in context.table:
        cast_type = locate(row["type"])
        context.params_dict[row["parameter"]] = cast_type(row["value"]) if "value" in row else None
        context.types[row["parameter"]] = cast_type


@given(u'the following variables are recorded every time step')
def step_impl(context):
    context.outputs = [row['variable'] for row in context.table]
    for row in context.table:
        context.types[row['variable']] = locate(row['type'])


@given(u'a connected repeating unit')
def step_impl(context):
    inputs = list(context.params_dict.keys())
    context.repeating_unit = draw_connected_repeating_unit(inputs, context.outputs)
    context.repeating_unit.write(f"dags/{context.feature_name}_repeating_unit.dot")


@when(u'we prune the following edges')
def step_impl(context):
    to_go = set()
    for row in context.table:
        for s1, s2 in context.repeating_unit.edges():
            if re.fullmatch("^"+row['s1']+"$", s1) and re.fullmatch("^"+row['s2']+"$", s2):
                to_go.add((s1, s2))
    for s1, s2 in to_go:
        context.repeating_unit.delete_edge(s1, s2)


@when(u'we add the following edges')
def step_impl(context):
    for row in context.table:
        context.repeating_unit.add_edge(row['s1'], row['s2'])


@then(u'we obtain the causal DAG for {n} {time_steps}')
def step_impl(context, n, time_steps):
    dag = iterate_repeating_unit(context.repeating_unit, int(n), start=1)
    assert dag.acyclic(copy=True) == dag, "Causal DAG cannot contain cycles"
    dag.write(context.dag_path)


@then(u'we obtain the causal DAG')
def step_impl(context):
    dag = context.repeating_unit
    assert dag.acyclic(copy=True) == dag, "Causal DAG cannot contain cycles"
    dag.write(context.dag_path)
