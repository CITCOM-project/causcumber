from dowhy import CausalModel
from pprint import pprint
import matplotlib.pyplot as plt
import pandas as pd


def split_df_to_binary_dfs(df, treatment_var, treatment_val, control_val):
    new_df = df[(df[treatment_var] == treatment_val) | (df[treatment_var] == control_val)]
    new_df[treatment_var].replace({treatment_val: 1, control_val: 0})
    new_df[treatment_var].astype(bool)
    return new_df

SIM_DATA_PATH = "./results/data.csv"
CAUSAL_GRAPH_PATH = "./testing.dot"
sim_data_df = pd.read_csv(SIM_DATA_PATH)
sim_data_df.boxplot(by="intervention", column="cum_deaths")
plt.show()


def split_df_to_binary_dfs(df, treatment_var, treatment_val, control_val):
    new_df = df[(df[treatment_var] == treatment_val) | (df[treatment_var] == control_val)]
    new_df[treatment_var].replace({treatment_val: 1, control_val: 0})
    new_df[treatment_var].astype(bool)
    return new_df


scenarios = {"standard_testing_vs_baseline": (0, 1),
             "standard_tracing_vs_baseline": (0, 2),
             "standard_tracing_vs_standard_testing": (1, 2),
             "no_testing_vs_baseline": (0, 3),
             "no_tracing_vs_standard_testing": (1, 4),
             "trace_without_test_vs_baseline": (0, 5),
             "optimal_testing_vs_standard_testing": (1, 6),
             "optimal_tracing_vs_standard_tracing": (2, 7)}

estimates_dict = {}
ates_dict = {}
for scenario_name, control_and_treatment_vals in scenarios.items():
    control_val, treatment_val = control_and_treatment_vals
    comparison_df = split_df_to_binary_dfs(sim_data_df, "intervention", treatment_val, control_val)
    causal_model = CausalModel(comparison_df, "intervention", "cum_deaths", graph=CAUSAL_GRAPH_PATH)
    causal_estimand = causal_model.identify_effect(proceed_when_unidentifiable=True)
    print(control_val, treatment_val)
    causal_estimate = causal_model.estimate_effect(causal_estimand, method_name="backdoor.linear_regression",
                                                   control_value=control_val, treatment_value=treatment_val)
    print(causal_estimate)
    estimates_dict[scenario_name] = causal_estimate.value
    ate = sim_data_df[sim_data_df["intervention"] == treatment_val]["cum_deaths"].mean() - \
          sim_data_df[sim_data_df["intervention"] == control_val]["cum_deaths"].mean()
    ates_dict[scenario_name] = ate
pprint(estimates_dict)
pprint(ates_dict)

