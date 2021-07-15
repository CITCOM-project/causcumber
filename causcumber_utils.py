""" Utility files for CauseCumber. """
import pydot
import numpy as np
from rpy2.robjects.packages import importr, isinstalled
from rpy2.robjects.vectors import StrVector
from rpy2.robjects.packages import STAP
import pandas as pd
import dowhy

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
    min_adjustment_list = np.array(min_adjustment_set).tolist()[0]
    return min_adjustment_list


def _install_r_packages(package_names):
    """ Download and install a given list of R packages from CRAN.

    :param package_names: a list of package names to install as strings.
    """
    utils = importr("utils")
    utils.chooseCRANmirror(ind=1)
    packages_to_install = [pkg for pkg in package_names if not isinstalled(pkg)]
    if len(packages_to_install) > 0:
        utils.install_packages(StrVector(packages_to_install))


def _dot_to_dagitty_dag(dot_file_path):
    """ Convert a standard dot digraph to a dagitty-compatible dag.

    :param dot_file_path: path to causal graph dot file as a string.
    :return: string representation of dagitty-compatible dag.
    """
    dot_graph = pydot.graph_from_dot_file(dot_file_path)
    dot_string = "dag {" + "\n".join([e.to_string() for e in dot_graph[0].get_edges()]) + "}"
    dag_string = dot_string.replace("digraph", "dag")
    return dag_string


def run_dowhy(data, graph, treatment_var, outcome_var, control_val, treatment_val, verbose=False, confidence_intervals=False):
    """
    Runs dowhy to calculate a causal estimate.
    
    Parameters
    ----------
    data : pandas dataframe
        A dataframe representing the observational data.
    graph : string
        Filepath of the DOT file representing the causal DAG. Nodes here MUST have a 1:1 correspondence with columns in the data.
    treatment_var : string
        The name of the treatment variable (must be a column in the data).
    outcome_var : string
        The name of the outcome variable (must be a column in the data).
    control_val
        The control value of the treatment variable (i.e. the value for individuals who did NOT receive treatment).
    treatment_val
        The treated value of the treatment variable (i.e. the value for individuals who DID receive treatment.)
    verbose : boolean
        Set to True to print additional information to the console (defaults to False).
    confidence_intervals : boolean
        Tell doWhy to compute the confidence intervals in the estimate
    Returns
    -------
    float
        The causal estimate calculated by doWhy.

    """
    if verbose:
        print("Running doWhy with params")
        print("\n".join([f"  {k}: {v}" for k, v in locals().items() if k != "data"]))
    
    if treatment_var not in data:
        raise ValueError(f"Treatment variable {treatment_var} must be a column in the data, i.e. one of {data.columns}")
    if outcome_var not in data:
        raise ValueError(f"Outcome variable {outcome_var} must be a column in the data, i.e. one of {data.columns}")
    
    # 2. Create a causal model from the data and given graph
    if verbose:
        print("Creating a causal model...")
    adjustment_set = dagitty_identification(graph, treatment_var, outcome_var)
    if verbose:
        print("  adjustment_set", adjustment_set)
    model = dowhy.CausalModel(
        data=data,
        treatment=treatment_var,
        outcome=outcome_var,
        common_causes=adjustment_set
    )
    
    # # 3. Identify causal effect and return target estimands
    if verbose:
        print("Identifying...")
    identified_estimand = model.identify_effect(proceed_when_unidentifiable=True)
    # print(identified_estimand)     
       
    # 4. Estimate the target estimand using a statistical method.
    if verbose:
        print("Estimating...")
    estimate = model.estimate_effect(
        identified_estimand,
        method_name="backdoor.linear_regression",
        treatment_value=treatment_val,
        control_value=control_val,
        confidence_intervals=confidence_intervals
        )
    if not confidence_intervals:
        return estimate.value
    ci_low, ci_high = estimate.get_confidence_intervals()[0]
    if verbose:
        print("Total Effect Estimate:", round(estimate.value, 2))
        print("95% Confidence Intervals: [{}, {}]".format(round(ci_low, 2), round(ci_high, 2)))
    return estimate.value, estimate.get_confidence_intervals()[0]
