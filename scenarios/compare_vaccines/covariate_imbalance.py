""" Calculate covariate imbalance. """
import pandas as pd
from causcumber_utils import dagitty_identification


def covariate_imbalance(df, covariates, treatment_var, treatment_val, control_val):
    """ Estimate the covariate imbalance by taking the mean over the mean difference between the treatment and control
        group of each covariate. """
    control_group = df.loc[df[treatment_var] == control_val]
    treatment_group = df.loc[df[treatment_var] == treatment_val]
    total_imbalance = 0
    if covariates:
        for covariate in covariates:
            print(covariate)
            imbalance = treatment_group[covariate].mean() - control_group[covariate].mean()
            total_imbalance += imbalance
        return total_imbalance / len(covariates)
    else:
        return 0


if __name__ == "__main__":
    observational_data = pd.read_csv("./observational_data/single_vaccine.csv")
    adjustment_set = dagitty_identification("./dags/simple_confounding_dag.dot", "interventions", "cum_infections_5")

    # convert categories to numerical scheme
    countries = observational_data["location"].unique()
    country_conversion_dict = {country: n for n, country in enumerate(countries)}
    observational_data["location"] = observational_data["location"].replace(country_conversion_dict)

    imbalance_score = covariate_imbalance(observational_data, adjustment_set, "interventions", "pfizer", "none")
    print(f"Covariate imbalance: {imbalance_score}")
