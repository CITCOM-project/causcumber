import numpy as np
import pandas as pd
import covasim as cv
from collections import defaultdict
from covasim_utils import run_covasim_by_week, save_results_df
from causcumber_utils import dagitty_identification, covariate_imbalance
from time import time

N_REPEATS = 30
N_INPUT_CONFIGURATIONS = 1000
N_RUNS = 1
BIAS_LOCATIONS = True
# This value will control covariate imbalance
# High (10+) will result in balanced data (low covariate imbalance score)
# Low (0.1-) will result in imbalanced data (high covariate imbalance score)

vaccine_names = ["none", "pfizer", "moderna", "az"]
# vaccine_probs_by_country = {"UK": 1, "France": 0.5, "Japan": 1.5}
fixed_params = {"n_days": 35, "pop_type": "hybrid", "use_waning": True}
variable_params = {"pop_size": (50000, 5000), "pop_infected": (100, 10), "location": ["UK", "France", "Japan",
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


def generate_biased_observational_data_from_param_list(param_list, n, preferred_choice=None, concentration = 1):
    prob_list = np.random.dirichlet(np.ones(len(param_list))*concentration, size=1).flatten().tolist()
    print(prob_list)
    if preferred_choice:
        # Make the largest probability correspond to the preferred choice
        preferred_choice_index = param_list.index(preferred_choice)
        max_value_index = prob_list.index(max(prob_list))
        # Place the largest probability at the same position as the preferred choice
        prob_list[preferred_choice_index], prob_list[max_value_index] = prob_list[max_value_index], \
                                                                        prob_list[preferred_choice_index]
    return np.random.choice(param_list, n, p=prob_list)[0]


def generate_observational_data(fixed_params, variable_params, outputs, n_input_configurations, file_name,
                                concentration):
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
                                                                                  preferred_choice="pfizer",
                                                                                  concentration=concentration)
            elif params["location"] == "France":
                # Moderna is most probable
                vaccine_name = generate_biased_observational_data_from_param_list(vaccine_names, 1,
                                                                                  preferred_choice="moderna",
                                                                                  concentration=concentration)
            elif params["location"] == "Japan":
                # AZ is most probable
                vaccine_name = generate_biased_observational_data_from_param_list(vaccine_names, 1,
                                                                                  preferred_choice="az",
                                                                                  concentration=concentration)
            else:
                # None is most probable
                vaccine_name = generate_biased_observational_data_from_param_list(vaccine_names, 1,
                                                                                  preferred_choice="none",
                                                                                  concentration=concentration)
        else:
            vaccine_name = generate_observational_data_from_param_list(vaccine_names, 1)[0]
        if vaccine_name != "none":
            vaccine = cv.vaccinate_prob(vaccine_name, vaccinate_days, label=vaccine_name)
            params["interventions"] = vaccine
        label = vaccine_name
        run_results = run_covasim_by_week(label, params, outputs, n_runs=N_RUNS)
        # if "interventions" in run_results.keys():
        run_results["interventions"] = label  # convert vaccine object to label
        results_list.append(run_results)
        run_end_time = time()
        print(f"Run time: {run_end_time - run_start_time}")
    results_df = pd.concat(results_list)
    save_results_df(results_df, "./observational_data/RQ2", file_name)


def batch_generate_observational_data(n_input_configs, n_repeats, experiment_name, concentration=1):
    """ Generate n_input_configs and run the model n_runs number of times for each one and save to csv.
        Repeat this n_repeats number of times.

    :param n_input_configs: Number of input configurations to generate and run per repeat.
    :param n_repeats: Number of times to repeat the experiment (i.e. generate and run another set of n_input_configs
                      n_runs times).
    :param concentration: Parameter to configure the Dirichlet distribution which controls covariate imbalance.
                          If the concentration >>> 1, the distribution is approx. uniform and covariate imbalance -> 0.
                          If the concentration <<< 1, the distribution is significantly skewed and covariate imbalance
                          increases.
    """
    all_repeats_start = time()
    for repeat in range(n_repeats):
        print(f"Repeat {repeat}/{n_repeats}.")
        repeat_start = time()
        file_name = f"{experiment_name}_r{repeat}"
        generate_observational_data(fixed_params, variable_params, desired_outputs, n_input_configs, file_name, concentration)
        repeat_end = time()
        repeat_run_time = repeat_end - repeat_start
        repeat_run_time = repeat_run_time / (60 * 60)
        print(f"Repeat {repeat} took {repeat_run_time}h to run.")
    all_repeats_end = time()
    all_repeats_run_time = all_repeats_end - all_repeats_start
    all_repeats_run_time = all_repeats_run_time / (60 * 60)
    print(f"{n_repeats} took {all_repeats_run_time}h to run.")



def experiment_1_observational_data():
    """ Run the model with 1000 randomly generated input configurations and repeat this 30 times.
        Save each set of 1000 runs to a single csv. """
    batch_generate_observational_data(1000, 30, "experiment_1", 1)
# split_data_into_chunks("../../experiments/observational_data/data/experiment_1_observational_data.csv")


def experiment_2_imbalanced_observational_data():
    """ Run the model with 500 randomly generated input configurations and repeat this for five
        increasing levels of covariate imbalance.
    """
    concentration_params = [0.3, 0.4, 0.6, 0.7, 0.8]
    for concentration_param in concentration_params:
        experiment_name = f"experiment_2_c{str(concentration_param).replace('.', '')}"
        batch_generate_observational_data(300, 3, experiment_name, concentration_param)


experiment_2_imbalanced_observational_data()
