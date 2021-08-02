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
            imbalance = treatment_group[covariate].mean() - control_group[covariate].mean()
            total_imbalance += imbalance
        return total_imbalance / len(covariates)
    else:
        return 0


if __name__ == "__main__":
    observational_data = pd.read_csv("./results/single_vaccination_results.csv")
    adjustment_set = dagitty_identification("./dags/causal_dag.dot", "intervention", "cum_infections_5")
    imbalance_score = covariate_imbalance(observational_data, adjustment_set, "intervention", 1, 0)
    print(imbalance_score)
