""" Utility files for CauseCumber. """
import pygraphviz
import numpy as np
from rpy2.robjects.packages import importr, isinstalled
from rpy2.robjects.vectors import StrVector
from rpy2.robjects.packages import STAP
import dowhy
import pydot
from collections import Hashable
import os
import pickle
import pandas as pd
from itertools import combinations


def covariate_imbalance(df, covariates, treatment_var):
    """
    Estimate the covariate imbalance.
    For binary treatments, this is done by taking the mean over the mean
    difference between the treatment and control group of each covariate.
    For categorical treatments, this is done by calculating pairwise comparisons
    between treatment groups and taking the largest.
    For continuous treatments, this is done by taking the mean over the Pearson
    correlations between each covariate and the treatment.
    Categorical covariates are handled using one-hot encoding to transform them
    into boolean variables.

    Parameters
    ----------
    df : pandas dataframe
        Dataframe containing the data.
    covariates : list
        The covariates for which to calculate the imbalance.
    treatment_var : string
        The name of the treatment.

    Returns
    -------
    float
        The covariate imbalance between the supplied covariates.

    """

    covariates = [c for c in covariates if c in df.columns]
    assert (
        treatment_var not in covariates
    ), f"Treatment var {treatment_var} cannot also be a covariate"

    if not covariates:
        return 0

    new_covariates = []
    # One-hot encode all categorical covariates
    for covariate in covariates:
        if str(df.dtypes[covariate]) == "category":
            to_one_hot_encode = pd.get_dummies(df[covariate], prefix=covariate)
            df = df.drop(covariate, axis=1)
            df = df.join(to_one_hot_encode)
            new_covariates += list(to_one_hot_encode)
        else:
            new_covariates.append(covariate)
    covariates = new_covariates

    if str(df.dtypes[treatment_var]) == "bool":
        control_group = df.loc[df[treatment_var] == 0]
        treatment_group = df.loc[df[treatment_var] == 1]
        for covariate in covariates:
            print(covariate, treatment_group[covariate])
        imbalances = [
            abs(treatment_group[covariate].mean() - control_group[covariate].mean())
            for covariate in covariates
        ]
    elif str(df.dtypes[treatment_var]) == "category":
        treatments = set(df[treatment_var])
        groups = [df.loc[df[treatment_var] == c] for c in treatments]
        imbalances = [
            [
                abs(g1[covariate].mean() - g2[covariate].mean())
                for g1, g2 in combinations(groups, 2)
            ]
            for covariate in covariates
        ]
        imbalances = [max(x) for x in imbalances]
    else:
        imbalances = [df[covariate].corr(df[treatment_var]) for covariate in covariates]

    return sum(imbalances) / len(covariates)


def test(estimate, relationship, ci_low, ci_high):
    if relationship == "<":
        assert (
            estimate < 0 and ci_high < 0
        ), f"Expected estimate < 0, got {ci_low} < {estimate} < {ci_high}"
    elif relationship == "=":
        assert (
            ci_low < 0 < ci_high
        ), f"Expected estimate ~0, got {ci_low} < {estimate} < {ci_high}"
    elif relationship == ">":
        assert (
            estimate > 0 and ci_low > 0
        ), f"Expected estimate > 0, got {ci_low} < {estimate} < {ci_high}"


def test_bool(estimate, relationship, ci_low, ci_high):
    if relationship == "<":
        return estimate < 0 and ci_high < 0
    elif relationship == "=":
        return ci_low < 0 < ci_high
    elif relationship == ">":
        return estimate > 0 and ci_low > 0


def draw_connected_repeating_unit(
    inputs, time_steps=[], suffix_n="_n", suffix_n1="_n1"
):
    g = pygraphviz.AGraph(strict=False, directed=True, rankdir="LR", newrank=True)
    tn = g.add_subgraph(name="cluster_tn", label="<Time<sub>n</sub>>")
    tn1 = g.add_subgraph(name="cluster_tn1", label="<Time<sub>n+1</sub>>")
    ips = g.add_subgraph(name="cluster_inputs", label="Model inputs")

    for i in inputs:
        ips.add_node(i)

    for o in time_steps:
        tn.add_node(f"{o}_n")
        tn1.add_node(f"{o}_n1")

    for n in tn:
        for n1 in tn1:
            g.add_edge(n, n1)
        for i in ips:
            g.add_edge(i, n)
    return g


def draw_connected_dag(inputs, outputs):
    g = pygraphviz.AGraph(strict=False, directed=True, rankdir="LR", newrank=True)
    ips = g.add_subgraph(name="cluster_inputs", label="Model inputs")
    ops = g.add_subgraph(name="cluster_outputs", label="Model outputs")

    for i in inputs:
        ips.add_node(i)

    for o in outputs:
        ops.add_node(o)

    for o in ops:
        for o1 in ops:
            g.add_edge(o, o1)
        for i in ips:
            g.add_edge(i, o)
    return g


def iterate_repeating_unit(
    unit,
    num_steps,
    start=0,
    inputs_cluster="cluster_inputs",
    ips_cluster="cluster_inputs",
    tn_cluster="cluster_tn",
    tn1_cluster="cluster_tn1",
    suffix_n="_n",
    suffix_n1="_n1",
):
    timesteps = []
    inputs = []
    intra_inputs = []
    tn_nodes = unit.get_subgraph(tn_cluster)
    tn1_nodes = unit.get_subgraph(tn1_cluster)
    ips_nodes = unit.get_subgraph(ips_cluster)
    for s1, s2 in unit.edges():
        if s1 in tn_nodes and s2 in tn1_nodes:
            timesteps.append((s1, s2))
        elif s1 in ips_nodes and s2 in tn_nodes:
            inputs.append((s1, s2))
        elif s1 in ips_nodes and s2 in ips_nodes:
            intra_inputs.append((s1, s2))
        else:
            raise ValueError("Bad edge: ", s1, s2)

    g = pygraphviz.AGraph(strict=False, directed=True, rankdir="LR", newrank=True)

    g.add_edges_from([(s1, s2.replace(suffix_n, f"_{start}")) for s1, s2 in inputs])
    g.add_edges_from(
        [(s1, s2.replace(suffix_n, f"_{start}")) for s1, s2 in intra_inputs]
    )
    g.add_subgraph(graph_name="cluster_inputs", label="inputs").add_nodes_from(
        ips_nodes
    )

    cluster_start = g.add_subgraph(
        graph_name=f"cluster_{start}", label="<t<sub>0</sub>>"
    )
    cluster_start.add_nodes_from(
        [s1.replace(suffix_n, f"_{start}") for s1, _ in timesteps]
    )

    for t in range(start + 1, num_steps + 1):
        edges = [
            (s1.replace(suffix_n, f"_{t-1}"), s2.replace(suffix_n1, f"_{t}"))
            for s1, s2 in timesteps
        ]
        g.add_edges_from(edges)
        g.add_edges_from([(s1, s2.replace(suffix_n, f"_{t}")) for s1, s2 in inputs])

        c = g.add_subgraph(graph_name=f"cluster_{t}", label=f"<t<sub>{t}</sub>>")
        c.add_nodes_from([s2 for _, s2 in edges])
    return g


def dagitty_identification(dot_file_path, treatment, outcome):
    """ Identify minimal adjustment set for the causal effect of treatment on outcome in the causal graph specified
        in the given dot file.

    :param dot_file_path: path to causal graph dot file as a string.
    :param treatment: name of treatment variable as a string.
    :param outcome: name of outcome variable as a string.
    :return: a list of adjustment variables as strings.
    """
    _install_r_packages(["devtools", "dagitty", "glue"])
    dagitty_dag_str = _dot_to_dagitty_dag(dot_file_path)
    r_identification_fn = """
       R_identification <- function(dag_str, treatment, outcome){
           library(devtools)
           library(dagitty)
           library(glue)
           dag <- dagitty(dag_str)
           adjustment_sets <- (adjustmentSets(dag, treatment, outcome, type="minimal", effect="total"))
           min_adjustment_set <- adjustment_sets[which.min(lengths(adjustment_sets))]
           return(min_adjustment_set)
       }
       """
    r_pkg = STAP(r_identification_fn, "r_pkg")
    min_adjustment_set = r_pkg.R_identification(dagitty_dag_str, treatment, outcome)
    min_adjustment_list = np.array(min_adjustment_set).tolist()
    if len(np.array(min_adjustment_set).tolist()) == 0:
        return []
    return min_adjustment_list[0]


def _install_r_packages(package_names):
    """ Download and install a given list of R packages from CRAN.

    :param package_names: a list of package names to install as strings.
    """
    utils = importr("utils")
    utils.chooseCRANmirror(ind=1)
    packages_to_install = [pkg for pkg in package_names if not isinstalled(pkg)]
    if len(packages_to_install) > 0:
        # The silent package install requires user input, which Behave captures, so it appears to hang
        # This makes the failure "noisy", so the user knows what's going on
        raise ValueError(
            f"Please install R packages f{packages_to_install} and try again"
        )
        # utils.install_packages(StrVector(packages_to_install))


def _dot_to_dagitty_dag(dot_file_path):
    """ Convert a standard dot digraph to a dagitty-compatible dag.

    :param dot_file_path: path to causal graph dot file as a string.
    :return: string representation of dagitty-compatible dag.
    """
    # dot_graph = pydot.graph_from_dot_data(dot_file_path)
    # dot_string = "dag {" + "\n".join([e.to_string() for e in dot_graph[0].get_edges()]) + "}"
    dot_graph = pygraphviz.AGraph(dot_file_path)
    dot_string = (
        "dag {" + "\n".join([f"{s1} -> {s2};" for s1, s2 in dot_graph.edges()]) + "}"
    )
    dag_string = dot_string.replace("digraph", "dag")
    return dag_string


def run_dowhy(
    data,
    graph,
    treatment_var,
    outcome_var,
    control_val,
    treatment_val,
    identification=True,
    verbose=False,
    **kwargs,
):
    """
    :param data: A dataframe representing the observational data.
    :param graph: Filepath of the DOT file representing the causal DAG. Nodes here MUST have a 1:1 correspondence with
                  columns in the data.
    :param treatment_var: The name of the treatment variable (must be a column in the data).
    :param outcome_var: The name of the outcome variable (must be a column in the data).
    :param control_val: The control value of the treatment variable (i.e. the value for individuals who did NOT
                        receive treatment).
    :param treatment_val: The treated value of the treatment variable (i.e. the value for individuals who DID receive
                          treatment.)
    :param identification: Set to false to disable identification and make no adjustments, yielding purely associational
                           estimates.
    :param verbose: Set to True to print additional information to the console (defaults to False).
    :return: The causal estimate calculated by doWhy and the 95% confidence intervals [low, high].
    """

    if verbose:
        print("Running Do Why with params")
        print(
            "\n".join(
                [
                    f"  {k}: {v}" + (f"::{type(v)}" if k.endswith("_val") else "")
                    for k, v in locals().items()
                    if k != "data"
                ]
            )
        )

    if treatment_var not in data:
        raise ValueError(
            f"Treatment variable {treatment_var} must be a column in the data, i.e. one of {data.columns}"
        )
    if outcome_var not in data:
        raise ValueError(
            f"Outcome variable {outcome_var} must be a column in the data, i.e. one of {data.columns}"
        )

    """
    TODO: This is a hack to get around the fact that doWhy draws a straight line
    through the entire data rather than through pairs of categorical values.
    This slices the data such that it only contains the two values we're
    interested in, effectively binarising the treatment.
    """
    data = data.copy()
    if str(data.dtypes[treatment_var]) == "category":
        print(data[treatment_var])
        assert isinstance(
            control_val, Hashable
        ), f"Categorical control value {control_val} must be hashable."
        assert isinstance(
            treatment_val, Hashable
        ), f"Categorical treatment value {treatment_val} must be hashable."
        assert all(
            [isinstance(x, Hashable) for x in data[treatment_var]]
        ), "Categorical treatments must be hashable."
        data[treatment_var] = [str(x) for x in data[treatment_var]]
        grouped = data.groupby(treatment_var)
        groups = {k: i for i, (k, _) in enumerate(grouped)}
        data[treatment_var] = [groups[i] for i in data[treatment_var]]
        data[treatment_var] = data[treatment_var].astype("category")
        print("GROUPS:", groups)
        control_val = groups[str(control_val)]
        treatment_val = groups[str(treatment_val)]
        data = data.loc[data[treatment_var].isin([control_val, treatment_val])]

    # Create a causal model from the data and given graph
    if verbose:
        print("Creating a causal model...")

    adjustment_set = []
    # If you want to use identification, check if adjustment set is already computed
    if identification:
        adjustment_set_path = (
            f'{graph.replace(".dot", "")}-{treatment_var}-{outcome_var}-adjustment.adj'
        )
        if os.path.exists(adjustment_set_path):
            with open(adjustment_set_path, "rb") as f:
                adjustment_set = pickle.load(f)
        else:
            adjustment_set = dagitty_identification(graph, treatment_var, outcome_var)
            with open(adjustment_set_path, "wb") as f:
                pickle.dump(adjustment_set, f)

    if verbose:
        print("  adjustment_set", adjustment_set)
        print(f"Datatype of treatment '{treatment_var}':", data.dtypes[treatment_var])

    model = dowhy.CausalModel(
        data=data,
        treatment=treatment_var,
        outcome=outcome_var,
        common_causes=adjustment_set,
    )

    # Identify causal effect and return target estimand
    if verbose:
        print("Identifying...")

    identified_estimand = None
    identified_estimand_path = (
        f'{graph.replace(".dot", "")}-{treatment_var}-{outcome_var}-estimand.est'
    )
    # Only use a previous estimand if you are using identification
    if os.path.exists(identified_estimand_path) and identification:
        with open(identified_estimand_path, "rb") as f:
            identified_estimand = pickle.load(f)
    else:
        identified_estimand = model.identify_effect(proceed_when_unidentifiable=True)
        if identification:  # Don't save the empty estimand
            with open(identified_estimand_path, "wb") as f:
                pickle.dump(identified_estimand, f)

    # Estimate the target estimand using linear regression.
    if verbose:
        print("Estimating...")

    # TODO: Should give user the ability to select different estimation methods
    estimate = model.estimate_effect(
        identified_estimand,
        treatment_value=treatment_val,
        control_value=control_val,
        confidence_intervals=True,
        **kwargs,
    )

    # TODO: there's a *potential* bug in doWhy such that ci_low and ci_high don't always correspond to the minimum and maximum respectively
    # This is why we need to sort
    ci_low, ci_high = sorted(estimate.get_confidence_intervals()[0])
    ci_low, ci_high = round(ci_low, 2), round(ci_high, 2)
    estimate_value = round(estimate.value, 2)
    if verbose:
        print("Total Effect Estimate:", estimate.value)
        print("95% Confidence Intervals: [{}, {}]".format(ci_low, ci_high))
    return estimate.value, (ci_low, ci_high)


def to_snake_case(string):
    lowercase_string = string.lower()
    snake_case_string = lowercase_string.replace(" ", "_")
    return snake_case_string
