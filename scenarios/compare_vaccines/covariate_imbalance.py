""" Calculate covariate imbalance. """
import pandas as pd

import sys
sys.path.append("../../../../")  # This one's for native running from within steps
sys.path.append("../../../")  # This one's for running `behave` in `features`
sys.path.append("../../")  # This one's for running `behave` in `compare_vaccines`
from causcumber_utils import dagitty_identification, covariate_imbalance


def append_imbalance_score_to_df(csv_path, causal_graph_path):
    df = pd.read_csv(csv_path)
    adjustment_set = dagitty_identification(causal_graph_path, "interventions", "cum_infections_5")
    df["location"] = df["location"].astype("category")
    df["interventions"] = df["interventions"].astype("category")
    df["pop_type"] = df["pop_type"].astype("category")
    imbalance_score = covariate_imbalance(df, adjustment_set, "interventions")
    df["imbalance"] = imbalance_score
    print(f"Imbalance score: {imbalance_score}")
    df.to_csv(csv_path)

if __name__ == "__main__":
    csv_path = "./observational_data/RQ2/experiment_2_c100_0.csv"
    causal_graph_path = "./dags/simple_confounding_dag.dot"
    append_imbalance_score_to_df(csv_path, causal_graph_path)
