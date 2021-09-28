from behave import given, when, then
from pydoc import locate

import sys
sys.path.append("./")
from causcumber.causcumber_utils import draw_connected_repeating_unit, iterate_repeating_unit, draw_connected_dag


@given("a simulation with parameters")
def step_impl(context):
    """
    Populate the params_dict with the specified simulation parameters.
    """
    for row in context.table:
        cast_type = locate(row["type"])
        context.params_dict[row["parameter"]] = cast_type(row["value"])
        context.types[row["parameter"]] = cast_type


@given(u'the following variables are recorded every time step')
def step_impl(context):
    context.desired_outputs = [row['variable'] for row in context.table]
    for row in context.table:
        context.types[row['variable']] = locate(row['type'])


@given(u'the following variables are recorded at the end of the simulation')
def step_impl(context):
    context.desired_outputs = [row['variable'] for row in context.table]
    for row in context.table:
        context.types[row['variable']] = locate(row['type'])


@given(u'a connected repeating unit')
def step_impl(context):
    inputs = list(context.params_dict.keys())
    context.repeating_unit = draw_connected_repeating_unit(inputs, context.desired_outputs)
    context.repeating_unit.write(f"dags/{context.feature_name}_repeating_unit.dot")


@given(u'a connected DAG')
def step_impl(context):
    inputs = list(context.params_dict.keys())
    context.repeating_unit = draw_connected_dag(inputs, context.desired_outputs)


@when(u'we prune the following edges')
def step_impl(context):
    for row in context.table:
        context.repeating_unit.delete_edge(row['s1'], row['s2'])


@when(u'we add the following edges')
def step_impl(context):
    for row in context.table:
        context.repeating_unit.add_edge(row['s1'], row['s2'])


@then(u'we obtain the causal DAG for {n} {time_steps}')
def step_impl(context, n, time_steps):
    dag = iterate_repeating_unit(context.repeating_unit, int(n), start=1)
    dag.write(context.dag_path)


@then(u'we obtain the causal DAG')
def step_impl(context):
    context.repeating_unit.write(context.dag_path)