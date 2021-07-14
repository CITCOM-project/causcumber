""" Utility files for CauseCumber. """
import pydot
from rpy2.robjects.packages import importr, isinstalled
from rpy2.robjects.vectors import StrVector
from rpy2.robjects.packages import STAP


def dagitty_identification(dot_file_path, treatment, outcome):
    """ Identify minimal adjustment set for the causal effect of treatment on outcome in the causal graph specified
        in the given dot file. """
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
    return min_adjustment_set


def _install_r_packages(package_names):
    """ Given a list of package names, check if installed and if not, install. """
    utils = importr("utils")
    utils.chooseCRANmirror(ind=1)
    packages_to_install = [pkg for pkg in package_names if not isinstalled(pkg)]
    if len(packages_to_install) > 0:
        utils.install_packages(StrVector(packages_to_install))


def _dot_to_dagitty_dag(dot_file_path):
    dot_graph = pydot.graph_from_dot_file(dot_file_path)
    dot_string = dot_graph[0].to_string()
    dag_string = dot_string.replace("digraph", "dag")
    return dag_string
