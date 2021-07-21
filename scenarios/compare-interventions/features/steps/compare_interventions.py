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
from covasim_utils import run_covasim_by_week
from causcumber_utils import run_dowhy

use_step_matcher("parse")

RESULTS_PATH = "scenarios/compare_interventions/results"


@given("a simulation with parameters")
def step_impl(context):
    """
    Populate the params_dict with the specified simulation parameters.
    """
    for row in context.table:
        cast_type = locate(row["type"])
        context.params_dict[row["parameter"]] = cast_type(row["value"])
    context.n_weeks = round(context.params_dict['n_days']/7)


@given("the following variables are recorded weekly")
def step_impl(context):
    """
    Create a results df to record only the specified values.
    """
    results_dict = table_to_dict(context.table)
    context.desired_outputs = results_dict['variable']


@given(u'a simulation run with only the background parameters')
def step_impl(context):
    context.run_params = context.params_dict.copy()
    context.run_params['interventions'] = []

def write_df(df, fname):
    if not os.path.isfile(fname):
        df.to_csv(fname, header='column_names')
    else:
        df.to_csv(fname, mode='a', header=False)


@when(u'the simulation is complete')
def step_impl(context):
    week_by_week = run_covasim_by_week(
        context.scenario.name,
        {k: v for k, v in context.run_params.items() if k != "label"},
        context.desired_outputs,
        n_runs=10)
    write_df(week_by_week, "results/background.csv")


@then(u'all weekly variables are recorded')
def step_impl(context):
    df = pd.read_csv("results/background.csv")
    for week in range(1, round(context.params_dict['n_days']/7)+1):
        for column in context.desired_outputs:
            assert f"{column}_w{week}" in df.columns, f"{column}_w{week} not recorded"


@given(u'testing interventions <label> with parameters: <symp_prob>, <asymp_prob>, <symp_quar_prob>, <asymp_quar_prob>')
def step_impl(context):
    context.covasim_runs = []
    context.scenario_table = context.table
    for row in context.table:
        run_params = context.params_dict.copy()
        run_params['interventions'] = [cv.test_prob(
            symp_prob=row['symp_prob'],
            asymp_prob=row['asymp_prob'],
            symp_quar_prob=row['symp_quar_prob'],
            asymp_quar_prob=row['asymp_quar_prob']
        )]
        run_params['label']=row['label']
        context.covasim_runs.append(run_params)


@when(u'all simulations are complete')
def step_impl(context):
    results = []
    for run_params in context.covasim_runs:
        r = run_covasim_by_week(
            run_params['label'],
            {k: v for k, v in run_params.items() if k != "label"},
            context.desired_outputs,
            n_runs=10)
        results.append(r)
    df = pd.concat(results)
    write_df(df, "results/sims.csv")


def test(estimate, relationship, ci_low, ci_high):
    if relationship == "<":
        assert estimate < 0 and ci_high < 0, f"Expected estimate < 0, got {ci_low} < {estimate} < {ci_high}"
    elif relationship == "=":
        assert ci_low < 0 < ci_high, f"Expected estimate ~0, got {ci_low} < {estimate} < {ci_high}"
    elif relationship == ">":
        assert estimate > 0 and ci_low > 0, f"Expected estimate > 0, got {ci_low} < {estimate} < {ci_high}"


def preprocess_data(data):
    grouped = data.groupby("intervention")
    treatments = {k: i for i, (k, _) in enumerate(grouped)}
    data['intervention'] = [treatments[i] for i in data['intervention']]
    data['intervention'] = data['intervention'].astype('category')
    data['pop_type'] = data['pop_type'].astype('category')
    data['location'] = data['location'].astype('category')
    data = data.drop(["interventions"], axis=1)
    return data, treatments


@then(u'the "cum_deaths" should be <relationship> <id1>')
def step_impl(context):
    for row in context.scenario_table:
        background = pd.read_csv("results/background.csv")
        sims = pd.read_csv("results/sims.csv")
        data = pd.concat([background, sims])
        data, treatments = preprocess_data(data)
        data.to_csv("results/data.csv")
        estimate, (ci_low, ci_high) = run_dowhy(
                  data,
                  "dags/causal_dag.dot",
                  "intervention",
                  f"cum_deaths_w{context.n_weeks}",
                  treatments[row['id1']],
                  treatments[row['label']])
        test(estimate, row['relationship'], ci_low, ci_high)

@given(u'a testing intervention {label} with parameters: {symp_prob}, {asymp_prob}, {symp_quar_prob}, {asymp_quar_prob}')
def step_impl(context, label, symp_prob, asymp_prob, symp_quar_prob, asymp_quar_prob):
    context.scenario_table = context.table
    context.run_params = context.params_dict.copy()
    context.run_params['label'] = label
    context.run_params['interventions'] = [cv.test_prob(
        symp_prob=symp_prob,
        asymp_prob=asymp_prob,
        symp_quar_prob=symp_quar_prob,
        asymp_quar_prob=asymp_quar_prob
    )]


@given(u'a tracing intervention <label> with parameters: trace_probs=dict(h=<h>, w=<w>, s=<s>, c=<c>)')
def step_impl(context):
    context.covasim_runs = []
    context.scenario_table = context.table
    for row in context.table:
        run_params = context.run_params.copy()
        run_params['interventions'] = run_params['interventions'].copy()
        run_params['interventions'].append(cv.contact_tracing(
            trace_probs=dict(h=float(row['h']), s=float(row['s']), w=float(row['w']), c=float(row['c'])), quar_period=14)
        )
        run_params['label']=row['label']
        context.covasim_runs.append(run_params)


@given(u'a tracing intervention with parameters: trace_probs=dict(h={h}, s={s}, w={w}, c={c})')
def step_impl(context, h, s, w, c):
    context.run_params['interventions'].append(cv.contact_tracing(
        trace_probs=dict(h=float(h), s=float(s), w=float(w), c=float(c)), quar_period=14)
    )

@then(u'the "{outcome}" should be "{relationship}" {control}')
def step_impl(context, outcome, relationship, control):
    data, treatments = preprocess_data(pd.read_csv("results/background.csv"))
    print(treatments)
    estimate, (ci_low, ci_high) = run_dowhy(
              data,
              "dags/causal_dag.dot",
              "intervention",
              f"{outcome}_w{context.n_weeks}",
              treatments[context.scenario.name],
              treatments[control])
    test(estimate, relationship, ci_low, ci_high)
