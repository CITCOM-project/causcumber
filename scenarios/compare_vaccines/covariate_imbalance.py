""" Calculate covariate imbalance. """
import pandas as pd

import sys
sys.path.append("../../../../")  # This one's for native running from within steps
sys.path.append("../../../")  # This one's for running `behave` in `features`
sys.path.append("../../")  # This one's for running `behave` in `compare_vaccines`
from causcumber_utils import dagitty_identification, covariate_imbalance

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

    normal_imbalance_score = covariate_imbalance(observational_data, adjustment_set, "interventions")
    imbalanced_imbalance_score = covariate_imbalance(imbalance_observational_data, adjustment_set, "interventions")
    print(f"Normal covariate imbalance: {normal_imbalance_score}")
    print(f"Imbalanced covariate imbalance: {imbalanced_imbalance_score}")