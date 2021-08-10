""" Calculate covariate imbalance. """
import pandas as pd

import sys
sys.path.append("../../../../")  # This one's for native running from within steps
sys.path.append("../../../")  # This one's for running `behave` in `features`
sys.path.append("../../")  # This one's for running `behave` in `compare_vaccines`
from causcumber_utils import dagitty_identification, covariate_imbalance

if __name__ == "__main__":
    imbalance_observational_data = pd.read_csv("./observational_data/covariate_imbalance_10th.csv")
    adjustment_set = dagitty_identification("./dags/simple_confounding_dag.dot", "interventions", "cum_infections_5")
    imbalance_observational_data["location"] = imbalance_observational_data["location"].astype("category")
    imbalance_observational_data["interventions"] = imbalance_observational_data["interventions"].astype("category")
    imbalance_observational_data["pop_type"] = imbalance_observational_data["pop_type"].astype("category")
    imbalanced_imbalance_score = covariate_imbalance(imbalance_observational_data, adjustment_set, "interventions")
    print(f"Imbalanced covariate imbalance: {imbalanced_imbalance_score}")