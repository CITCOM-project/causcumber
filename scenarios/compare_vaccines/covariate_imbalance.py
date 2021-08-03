""" Calculate covariate imbalance. """
import pandas as pd

import sys
sys.path.append("../../../../")  # This one's for native running from within steps
sys.path.append("../../../")  # This one's for running `behave` in `features`
sys.path.append("../../")  # This one's for running `behave` in `compare_vaccines`

import rpy2.robjects as ro
from rpy2.robjects.packages import importr
from rpy2.robjects import pandas2ri

from rpy2.robjects.conversion import localconverter

from causcumber_utils import dagitty_identification
from itertools import combinations


def covariate_imbalance(df, covariates, treatment_var,
                        control_val=0, treatment_val=1):
    """
    Estimate the covariate imbalance.
    For binary and categorical treatments, this is done by taking the mean over
    the mean difference between the treatment and control group of each
    covariate.
    For continuous treatments, this is done by taking the mean over the Pearson
    correlations between each covariate and the treatment.

    Parameters
    ----------
    df : pandas dataframe
        Dataframe containing the data.
    covariates : list
        The covariates for which to calculate the imbalance.
    treatment_var : string
        The name of the treatment.
    control_val
        The control value (if treatment is boolean or categorical).
        Defaults to 0.
    treatment_val
        The treatment value (if treatment is boolean or categorical).
        Defaults to 1.

    Returns
    -------
    float
        The covariate imbalance between the supplied covariates.

    """

    covariates = [c for c in covariates if c in df.columns]

    if not covariates:
        return 0
    else:
        # One-hot encode all categorical covariates
        for covariate in covariates:
            if str(df.dtypes[covariate]) == "category":
                to_one_hot_encode = pd.get_dummies(df[covariate], prefix=covariate)
                df = df.drop(covariate, axis=1)
                df = df.join(to_one_hot_encode)
                # Remove the original categorical variable and add one-hot encoded categories
                covariates.remove(covariate)
                covariates += list(to_one_hot_encode)

    if str(df.dtypes[treatment_var]) == "bool":
        control_group = df.loc[df[treatment_var] == control_val]
        treatment_group = df.loc[df[treatment_var] == treatment_val]
        imbalances = [abs(treatment_group[covariate].mean() - control_group[covariate].mean()) for covariate in
                      covariates]
    elif str(df.dtypes[treatment_var]) == "category":
        treatments = set(df[treatment_var])
        groups = [df.loc[df[treatment_var] == c] for c in treatments]
        imbalances = [[abs(g1[covariate].mean() - g2[covariate].mean()) for g1, g2 in combinations(groups, 2)] for
                      covariate in covariates]
        imbalances = [max(x) for x in imbalances]
    else:
        imbalances = [df[covariate].corr(df[treatment_var]) for covariate in covariates]

    return sum(imbalances) / len(covariates)


if __name__ == "__main__":
    observational_data = pd.read_csv("./observational_data/single_vaccine.csv")
    imbalance_observational_data = pd.read_csv("./observational_data/single_vaccine_imbalance.csv")
    adjustment_set = dagitty_identification("./dags/simple_confounding_dag.dot", "interventions", "cum_infections_5")

    observational_data['location'] = observational_data['location'].astype("category")
    observational_data['interventions'] = observational_data['interventions'].astype("category")
    observational_data['pop_type'] = observational_data['interventions'].astype("category")
    imbalance_observational_data["location"] = imbalance_observational_data["location"].astype("category")
    imbalance_observational_data["interventions"] = imbalance_observational_data["interventions"].astype("category")
    imbalance_observational_data["pop_type"] = imbalance_observational_data["pop_type"].astype("category")

    # cobalt = importr('cobalt')

    # with localconverter(ro.default_converter + pandas2ri.converter):
    #     r_from_pd_df = ro.conversion.py2rpy(observational_data)
    #     cobalt.bal_tab(observational_data, treat=ro.FactorVector(observational_data['interventions']))

    # convert categories to numerical scheme
    # countries = observational_data["location"].unique()
    # country_conversion_dict = {country: n for n, country in enumerate(countries)}
    # observational_data["location"] = observational_data["location"].replace(country_conversion_dict)

    normal_imbalance_score = covariate_imbalance(observational_data, adjustment_set, "interventions", "pfizer", "none")
    imbalanced_imbalance_score = covariate_imbalance(imbalance_observational_data, adjustment_set, "interventions",
                                                     "pfizer"  "none")
    print(f"Normal covariate imbalance: {normal_imbalance_score}")
    print(f"Imbalanced covariate imbalance: {imbalanced_imbalance_score}")
