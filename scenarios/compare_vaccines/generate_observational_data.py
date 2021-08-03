import numpy as np
import pandas as pd
import covasim as cv
from collections import defaultdict
from covasim_utils import run_covasim_by_week, save_results_df

N_RUNS = 50
BIAS_LOCATIONS = True

vaccine_names = ["none", "pfizer", "moderna", "az"]
vaccine_probs_by_country = {"UK": 1, "China": 0.5, "France": 0.8, "Japan": 1.5}
fixed_params = {"n_days": 35, "pop_type": "hybrid", "use_waning": True}
variable_params = {"pop_size": (50000, 1000), "pop_infected": (100, 5),  "location": ["UK", "China", "France", "Japan"],
                   "interventions": vaccine_names}
desired_outputs = ["cum_infections", "cum_symptomatic", "cum_severe", "cum_critical", "cum_deaths", "cum_vaccinated"]


def generate_observational_data_from_normal_distribution(param, variance, n):
    return np.random.normal(param, variance, n)


def generate_observational_data_from_param_list(param_list, n):
    return np.random.choice(param_list, n)


def generate_biased_observational_data_from_param_list(param_list, n):
    prob_list = np.random.dirichlet(np.ones(len(param_list))/1.2, size=1).flatten()
    print(prob_list)
    return np.random.choice(param_list, n, p=prob_list)


def generate_observational_data(fixed_params, variable_params, outputs, n_runs):
    """ Run Covasim for n_runs, keeping fixed_params fixed and selecting variable_params
        from the specified normal distribution to generate a df of outputs. """

    run_params = defaultdict(list)
    for param, info in variable_params.items():
        if type(info) == list:
            if param == "location" and BIAS_LOCATIONS:
                run_params[param] = generate_biased_observational_data_from_param_list(info, n_runs)
            else:
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
            # If UK, give pfizer with 80% chance
            vaccine_name = params["interventions"]
            if params["location"] == "UK":
                vaccine_name = np.random.choice([params["interventions"], "pfizer"], 1, p=[0.2, 0.8])[0]
            vaccine = cv.vaccinate_prob(vaccine_name, vaccinate_days, label=params["interventions"])
            # Inject some confounding: vaccine prob depends on country
            country = params["location"]
            vaccine_prob_multiplier = vaccine_probs_by_country[country]
            vaccine.prob *= vaccine_prob_multiplier
            params["interventions"] = vaccine
            label = vaccine.label
        run_results = run_covasim_by_week(label, params, outputs)
        # if "interventions" in run_results.keys():
        run_results["interventions"] = label  # convert vaccine object to label
        results_list.append(run_results)
    results_df = pd.concat(results_list)
    save_results_df(results_df, "./observational_data", "single_vaccine_imbalance")


generate_observational_data(fixed_params, variable_params, desired_outputs, N_RUNS)