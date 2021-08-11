import numpy as np
import pandas as pd
import covasim as cv
from collections import defaultdict
from covasim_utils import run_covasim_by_week, save_results_df
from time import time

N_INPUT_CONFIGURATIONS = 1000
N_REPEATS = 1
BIAS_LOCATIONS = True

vaccine_names = ["none", "pfizer", "moderna", "az"]
# vaccine_probs_by_country = {"UK": 1, "France": 0.5, "Japan": 1.5}
fixed_params = {"n_days": 35, "pop_type": "hybrid", "use_waning": True}
variable_params = {"pop_size": (50000, 1000), "pop_infected": (100, 5), "location": ["UK", "France", "Japan",
                                                                                     "New Zealand"]}
desired_outputs = ["cum_infections", "cum_symptomatic", "cum_severe", "cum_critical", "cum_deaths", "cum_vaccinated"]


def split_data_into_chunks(data_csv):
    """ Takes a dataframe and creates 10 sub-dfs containing 10%, 20%, 30%, ..., 100% of the data. """
    df = pd.read_csv(data_csv)
    percentages = [x / 10 for x in range(1, 10)]
    for percentage in percentages:
        sub_df = df.sample(frac=percentage)
        sub_df.to_csv(
            f"../../experiments/observational_data/experiment_1_observational_data_{str(int(percentage * 100))}"
            f".csv")


def generate_observational_data_from_normal_distribution(param, variance, n):
    return np.random.normal(param, variance, n)


def generate_observational_data_from_param_list(param_list, n):
    return np.random.choice(param_list, n)


def generate_biased_observational_data_from_param_list(param_list, n, preferred_choice=None):
    prob_list = np.random.dirichlet(np.ones(len(param_list))*10000, size=1).flatten().tolist()
    print(prob_list)
    if preferred_choice:
        # Make the largest probability correspond to the preferred choice
        preferred_choice_index = param_list.index(preferred_choice)
        max_value_index = prob_list.index(max(prob_list))
        # Place the largest probability at the same position as the preferred choice
        prob_list[preferred_choice_index], prob_list[max_value_index] = prob_list[max_value_index], \
                                                                        prob_list[preferred_choice_index]
    return np.random.choice(param_list, n, p=prob_list)[0]


def generate_observational_data(fixed_params, variable_params, outputs, n_input_configurations):
    """ Run Covasim for n_input_configurations, keeping fixed_params fixed and selecting variable_params
        from the specified normal distribution to generate a df of outputs. """

    run_params = defaultdict(list)
    for param, info in variable_params.items():
        if type(info) == list:
            run_params[param] = generate_observational_data_from_param_list(info, n_input_configurations)
        else:
            mean, variance = info
            run_params[param] = generate_observational_data_from_normal_distribution(mean, variance,
                                                                                     n_input_configurations)

    for param, info in fixed_params.items():
        run_params[param] = [info] * n_input_configurations

    results_list = []
    for run in range(n_input_configurations):
        print(f"Starting run {run + 1}/{n_input_configurations}")
        run_start_time = time()
        params = {k: v[run] for (k, v) in run_params.items()}

        # Only add interventions to params if a vaccine is selected

        vaccinate_days = list(range(params["n_days"]))
        if BIAS_LOCATIONS:
            # For each location, assign a preferred vaccine
            if params["location"] == "UK":
                # Pfizer is most probable
                vaccine_name = generate_biased_observational_data_from_param_list(vaccine_names, 1,
                                                                                  preferred_choice="pfizer")
            elif params["location"] == "France":
                # Moderna is most probable
                vaccine_name = generate_biased_observational_data_from_param_list(vaccine_names, 1,
                                                                                  preferred_choice="moderna")
            elif params["location"] == "Japan":
                # AZ is most probable
                vaccine_name = generate_biased_observational_data_from_param_list(vaccine_names, 1,
                                                                                  preferred_choice="az")
            else:
                # None is most probable
                vaccine_name = generate_biased_observational_data_from_param_list(vaccine_names, 1,
                                                                                  preferred_choice="none")
        else:
            vaccine_name = np.random.choice(vaccine_names, 1)
        if vaccine_name != "none":
            vaccine = cv.vaccinate_prob(vaccine_name, vaccinate_days, label=vaccine_name)
            params["interventions"] = vaccine
        label = vaccine_name
        run_results = run_covasim_by_week(label, params, outputs, n_runs=N_REPEATS)
        # if "interventions" in run_results.keys():
        run_results["interventions"] = label  # convert vaccine object to label
        results_list.append(run_results)
        run_end_time = time()
        print(f"Run time: {run_end_time - run_start_time}")
    results_df = pd.concat(results_list)
    save_results_df(results_df, "./observational_data", "covariate_imbalance_10th")


start = time()
generate_observational_data(fixed_params, variable_params, desired_outputs, N_INPUT_CONFIGURATIONS)
end = time()
print(end - start)
# split_data_into_chunks("../../experiments/observational_data/data/experiment_1_observational_data.csv")
