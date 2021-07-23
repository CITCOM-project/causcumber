import numpy as np
import pandas as pd
import covasim as cv
from collections import defaultdict
from covasim_utils import run_covasim_by_week, save_results_df

N_RUNS = 30

vaccine_names = ["none", "pfizer", "moderna", "az"]
fixed_params = {"n_days": 35, "pop_type": "hybrid", "location": "UK", "use_waning": True}
variable_params = {"interventions": vaccine_names, "pop_size": (50000, 1000), "pop_infected": (100, 5)}
desired_outputs = ["cum_infections", "cum_symptomatic", "cum_severe", "cum_critical", "cum_deaths", "cum_vaccinated"]


def generate_observational_data_from_normal_distribution(param, variance, n):
    return np.random.normal(param, variance, n)


def generate_observational_data_from_param_list(param_list, n):
    return np.random.choice(param_list, n)


def generate_observational_data(fixed_params, variable_params, outputs, n_runs):
    """ Run Covasim for n_runs, keeping fixed_params fixed and selecting variable_params
        from the specified normal distribution to generate a df of outputs. """

    run_params = defaultdict(list)
    for param, info in variable_params.items():
        if type(info) == list:
            run_params[param] = generate_observational_data_from_param_list(info, n_runs)
        else:
            mean, variance = info
            run_params[param] = generate_observational_data_from_normal_distribution(mean, variance, n_runs)

    for param, info in fixed_params.items():
        run_params[param] = [info]*n_runs

    results_list = []
    for run in range(n_runs):
        print(f"Starting run {run+1}/{n_runs}")
        params = {k: v[run] for (k, v) in run_params.items()}

        # Only add interventions to params if a vaccine is selected
        if params["interventions"] == "none":
            label = "none"
            del params["interventions"]
        else:
            vaccinate_days = list(range(params["n_days"]))
            vaccine = cv.vaccinate_prob(params["interventions"], vaccinate_days, label=params["interventions"])
            params["interventions"] = vaccine
            label = vaccine.label
        results_list.append(run_covasim_by_week(label, params, outputs))
    results_df = pd.concat(results_list)
    save_results_df(results_df, "./observational_data", "single_vaccine")


generate_observational_data(fixed_params, variable_params, desired_outputs, N_RUNS)