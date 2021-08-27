import pandas as pd
import numpy as np
import random
import covasim as cv
import matplotlib.pyplot as plt
from dowhy import CausalModel
from collections import defaultdict
from causcumber_utils import covariate_imbalance
from covasim_utils import run_covasim_by_week, save_results_df, preprocess_data
from sklearn.linear_model import LinearRegression

LOCATIONS = ["France", "UK"]
FIXED_PARAMS = {"n_days": 35, "pop_type": "hybrid", "use_waning": True}
VARIABLE_PARAMS = {"pop_size": (50000, 5000), "pop_infected": (100, 10)}


def generate_observational_data_from_normal_distribution(mean, variance, n):
    """ Pick n values for variable from normal distribution with params mean and variance.
    :param mean: Mean of the normal distribution (centre/loc).
    :param variance: Variance of the normal distribution (spread).
    :param n: Number of samples to take from distribution.
    :return: A list of n values sampled from normal distribution with the specified mean and variance.
    """
    return np.random.normal(mean, variance, n)


def generate_observational_data_from_param_list(param_list, n):
    """ Pick n values from parameter list with uniform probability.

    :param param_list: List of possible values to sample.
    :param n: Number of values to sample from list.
    :return: A list of n values sampled from param_list.
    """
    return np.random.choice(param_list, n)


def vaccinate_by_age(sim):
    """ Make elderly individuals more likely to receive vaccine than younger individuals. This is used to introduce
        confounding by age to the effect of vaccination on cumulative infections.

    :param sim: A Covasim Simulation which this vaccination method should be applied to.
    :return output: A dictionary which maps agents to a vaccination probability based on age.
    """
    young = cv.true(sim.people.age < 50)
    middle = cv.true((sim.people.age >= 50) * (sim.people.age < 75))
    old = cv.true(sim.people.age > 75)
    inds = sim.people.uid
    vals = np.ones(len(sim.people))
    vals[young] = 0.1
    vals[middle] = 0.5
    vals[old] = 0.9
    output = dict(inds=inds, vals=vals)
    return output


def run_covasim_with_biases(alphas, locations, params, n_runs, id):
    """ Causal question: what is the effect of vaccinating the elderly on cumulative infections after five weeks?

        Run the model n_runs times, each time selecting two countries at random: one where an elderly-first vaccine
        is available (treatment), and one where it is not (control). Each run has a different bias which is determined
        by the alpha parameter of a dirichlet distribution. This distribution is used to select the treatment and
        control country; if its value is >>> 1, the distribution is approx. normal; if its value is <<< 1, the
        distribution is highly skewed.
        """
    results_list = []
    control_params = params.copy()
    treatment_params = params.copy()

    for a, alpha in enumerate(alphas):
        print(f"Alpha {a + 1}/{len(alphas)}")
        random.shuffle(locations)  # shuffle locations so that the dominant countries can change on each alpha setting
        # Generate a probability that each country is selected
        prob_list = np.random.dirichlet(np.ones(len(locations)) * alpha, size=1).flatten().tolist()
        prob_list.sort(reverse=True)  # sort the probabilities in descending order
        control_locations = locations.copy()
        treatment_locations = locations.copy()

        # Rearrange the order of treatment locations so that treatment and control have a different dominant location
        treatment_locations[0], treatment_locations[-1] = treatment_locations[-1], treatment_locations[0]
        combined_results = []

        # Make sure each run contains at least one of each country (positivity)
        for i, location in enumerate(locations):
            print(f"Run {i + 1}/{n_runs}")
            control_params["interventions"] = None
            treatment_params["interventions"] = cv.vaccinate_prob(vaccine="pfizer", label="pfizer",
                                                                  days=list(range(35)),
                                                                  subtarget=vaccinate_by_age)
            control_params["location"] = location
            treatment_params["location"] = location
            # rand_seed = rand_seeds[0]  # Set the same seed for the ground truth set
            run_results = run_model_with_control_and_treatment_for_location(control_params, treatment_params)
            combined_results += run_results

        # Then run model using biased data for rest of runs
        for x in range(n_runs - len(locations)):
            print(f"Run {x + len(locations) + 1}/{n_runs}")
            control_params["interventions"] = None
            treatment_params["interventions"] = cv.vaccinate_prob(vaccine="pfizer", label="pfizer",
                                                                  days=list(range(35)),
                                                                  subtarget=vaccinate_by_age)
            # Select random location for control and treatment runs
            control_params["location"] = np.random.choice(control_locations, 1, p=prob_list)[0]
            treatment_params["location"] = np.random.choice(treatment_locations, 1, p=prob_list)[0]
            # rand_seed = rand_seeds[x + len(locations)]
            run_results = run_model_with_control_and_treatment_for_location(control_params, treatment_params)
            combined_results += run_results

        # For each alpha setting, combine the results and compute imbalance score
        combined_results_df = pd.concat(combined_results, ignore_index=True)
        combined_results_df["id"] = f"ic{id}_a{alpha}"
        combined_results_df = preprocess_data(combined_results_df)
        imbalance = covariate_imbalance(combined_results_df, ["avg_age"], "interventions")
        combined_results_df["imbalance"] = imbalance
        combined_results_df["alpha"] = alpha
        save_results_df(combined_results_df, f"./results/ic_{id}/", f"alpha_{alpha}")
        results_list.append(combined_results_df)

    results_df = pd.concat(results_list)
    return results_df


def run_model_with_control_and_treatment_for_location(control_params, treatment_params):
    """
    Run the model twice for a specific location, once with control params and once with treatment params.
    :param control_params: dictionary containing model parameters for control execution.
    :param treatment_params: dictionary containing model parameters for treatment execution.
    :return: results_df: a dataframe containing run results reported at weekly intervals.
    """
    control_results = run_covasim_by_week(label="control", params=control_params,
                                          desired_outputs=["cum_infections", "cum_deaths"], n_runs=1)
    treatment_results = run_covasim_by_week(label="treatment", params=treatment_params,
                                            desired_outputs=["cum_infections", "cum_deaths"], n_runs=1)

    # control_results["interventions"] = "none"
    # treatment_results["interventions"] = [vaccine.label for vaccine in treatment_results["interventions"]]

    return [control_results, treatment_results]


def compare_association_to_causation(csv_path):
    """ Plot the relationship between imbalance and unadjusted and adjusted ATE error.
    :param csv_path: Path to csv containing observational data.
    """
    df = pd.read_csv(csv_path)
    ids = list(df["id"].unique())
    id_specific_ates = {id: {"adjusted": 0, "unadjusted": 0, "imbalance": 0, "true_ate": 0}
                        for id in ids}
    for id in ids:
        sub_df = df.loc[df["id"] == id]
        locations = list(sub_df["location"].unique())
        # Each run has a single alpha and imbalance
        imbalance = round(sub_df["imbalance"].iloc[0], 2)

        # Mathematical check: higher imbalance should result in a greater difference between ATEs obtained via
        # adjustment and no adjustment. First we need to convert categorical data to numerical categories.
        dowhy_sub_df = sub_df.copy()
        dowhy_sub_df["interventions"] = dowhy_sub_df["interventions"].replace({"control": 0, "treatment": 1})
        dowhy_sub_df["location"] = dowhy_sub_df["location"].replace({"UK": 0, "France": 1, "Japan": 2,
                                                                     "New Zealand": 3, "Austria": 4, "Finland": 5})
        dowhy_sub_df["location"] = dowhy_sub_df["location"].astype("category")

        # Estimate the ATE with and without adjustment
        causal_ate = calculate_binary_ate(dowhy_sub_df, "interventions", "cum_infections_5", 1, 0, "avg_age",
                                          "stratification")
        non_causal_ate = calculate_binary_ate(dowhy_sub_df, "interventions", "cum_infections_5", 1, 0, None,
                                              "stratification")

        # Get the true ATE
        true_ate_df = dowhy_sub_df.head(len(locations) * 2)  # These rows contain 0 imbalance and give true ATE
        true_causal_ate = calculate_binary_ate(true_ate_df, "interventions", "cum_infections_5", 1, 0, "avg_age",
                                               "stratification")

        # Sanity check: is the true ATE equivalent to dowhy ATE?
        do_why_causal_ate = calculate_binary_ate(true_ate_df, "interventions", "cum_infections_5", 1, 0, "avg_age",
                                                 "dowhy")
        print(f"True ATE - DoWhy: {do_why_causal_ate}; Ours: {true_causal_ate}")  # Sometimes differs by a little bit

        id_specific_ates[id]["adjusted"] = causal_ate
        id_specific_ates[id]["unadjusted"] = non_causal_ate
        id_specific_ates[id]["imbalance"] = imbalance
        id_specific_ates[id]["true_ate"] = true_causal_ate
        id_specific_ates[id]["adjusted_error"] = abs(true_causal_ate - causal_ate)
        id_specific_ates[id]["unadjusted_error"] = abs(true_causal_ate - non_causal_ate)

    # Average any ATEs with the same imbalance
    sorted_id_specific_ates_no_duplicate_imbalances = average_id_specific_ates_with_same_imbalance(id_specific_ates)
    plot_imbalance_vs_ate_error(sorted_id_specific_ates_no_duplicate_imbalances)


def plot_imbalance_vs_ate_error(id_specific_ates_dict):
    """ Plot the adjusted and unadjusted ATE error relative to the target trial against imbalance.

    :param id_specific_ates_dict: A nested dictionary containing the ATE estimate for each id, sorted by ascending
                                  imbalance, of the structure: {id: {"adjusted": v}, {"unadjusted": v}, {"imbalance":
                                  v}, {"adjusted_error": v}, {"unadjusted_error": v}}.
    """
    imbalances = []
    ys_adjusted = []
    ys_unadjusted = []
    for _, results in id_specific_ates_dict.items():
        imbalances.append(results["imbalance"])
        ys_adjusted.append(results["adjusted_error"])
        ys_unadjusted.append(results["unadjusted_error"])
    plt.plot(imbalances, ys_adjusted, label="Adjusted")
    plt.plot(imbalances, ys_unadjusted, label="Unadjusted")
    plt.xlabel("Imbalance")
    plt.ylabel("ATE Error")
    plt.legend()
    plt.tight_layout()
    plt.show()


def average_id_specific_ates_with_same_imbalance(ate_dict):
    """
    Find all ATE estimates that were generated from datasets with the same imbalance score and average them.
    :param ate_dict: A nested dictionary containing ATE estimates of the structure: {id: {"adjusted": v}, {"unadjusted":
                    v}, {"imbalance": v}, {"adjusted_error": v}, {"unadjusted_error": v}}
    :return: The ate_dict with any duplicate imbalance ATEs averaged and replaced, sorted by ascending imbalance.
    """
    ate_dict_no_duplicate_imbalances = defaultdict(dict)
    visited_ids = []
    for id, results in ate_dict.items():
        if id not in visited_ids:
            other_ate_dict = {other_id: ate_dict[other_id] for other_id in ate_dict
                              if other_id != id}
            ids_with_duplicate_imbalance = [id]

            # Find all ids with the same imbalance score
            for other_id, other_results in other_ate_dict.items():
                if results["imbalance"] == other_results["imbalance"]:
                    ids_with_duplicate_imbalance.append(other_id)

            # Average the error of all ids with same imbalance
            ate_dict_no_duplicate_imbalances[id]["adjusted_error"] = \
                np.average([ate_dict[x]["adjusted_error"] for x in ids_with_duplicate_imbalance])
            ate_dict_no_duplicate_imbalances[id]["unadjusted_error"] = \
                np.average([ate_dict[x]["unadjusted_error"] for x in ids_with_duplicate_imbalance])
            ate_dict_no_duplicate_imbalances[id]["imbalance"] = results["imbalance"]

            # Add duplicate ids to visited list
            visited_ids += ids_with_duplicate_imbalance
    return dict(sorted(ate_dict_no_duplicate_imbalances.items(), key=lambda item: item[1]["imbalance"]))


def calculate_binary_ate(df, treatment_variable, outcome_variable, treatment_val, control_val, adjustment_var=None,
                         method_name="dowhy"):
    """ Calculate the Average Treatment Effect for a binary treatment variable whilst adjusting for
        the specified adjustment variable. Adjustments are made via stratification i.e.
        calculating the ATE in each stratum of the adjustment set separately and weighting by
        proportion of rows with that stratum.

        :param df: dataframe containing data from which ATE is computed.
        :param treatment_variable: the treatment variable which must be a column in the dataframe.
        :param outcome_variable: the outcome variable which must be a column in the dataframe.
        :param treatment_val: value of the treatment variable which defines treated group.
        :param control_val: value of the treatment variable which defines control group.
        :param adjustment_var: the variables to make an adjustment for i.e. confounder.
        :param method_name: the estimation method to use (dowhy, linear_regression, or stratification).
    """
    if method_name == "linear_regression":
        if adjustment_var:
            x = df[[treatment_variable, adjustment_var]].to_numpy()
        else:
            x = df[treatment_variable].to_numpy()
        x = np.vstack(x)
        y = df[outcome_variable]
        reg = LinearRegression().fit(x, y)
        intercept = reg.intercept_
        gradients = reg.coef_
        if len(gradients) > 1:
            treatment_gradient, covariate_gradient = gradients[0], gradients[1]
            print(f"{outcome_variable} ~ {treatment_gradient}*{treatment_variable} +"
                  f"{covariate_gradient}*{adjustment_var} + {intercept}")
        else:
            treatment_gradient = gradients[0]
            print(f"{outcome_variable} ~ {treatment_gradient}*{treatment_variable} + {intercept}")

        return round(treatment_gradient, 2)
    elif method_name == "dowhy":
        if adjustment_var:
            df[adjustment_var] = df[adjustment_var].astype("float")
            common_causes = [adjustment_var]
        else:
            common_causes = []
        causal_model = CausalModel(data=df, treatment=treatment_variable, outcome=outcome_variable,
                                   common_causes=common_causes)
        causal_estimand = causal_model.identify_effect(proceed_when_unidentifiable=True)
        ate = causal_model.estimate_effect(causal_estimand, method_name="backdoor.linear_regression").value
        return round(ate, 2)
    else:
        treated_df = df.loc[df[treatment_variable] == treatment_val]
        control_df = df.loc[df[treatment_variable] == control_val]
        if adjustment_var:
            strata = list(df[adjustment_var].unique())
            cumulative_ate = 0
            for stratum in strata:
                stratum_treated_df = treated_df.loc[treated_df[adjustment_var] == stratum]
                stratum_control_df = control_df.loc[control_df[adjustment_var] == stratum]
                stratum_ate = stratum_treated_df[outcome_variable].mean() - stratum_control_df[outcome_variable].mean()
                stratum_proportion = len(df.loc[df[adjustment_var] == stratum]) / len(df)
                cumulative_ate += (stratum_ate * stratum_proportion)
            return round(cumulative_ate, 2)
        else:
            return round(treated_df[outcome_variable].mean() - control_df[outcome_variable].mean(), 2)


def generate_input_configs(n_input_configs, fixed_params, variable_params):
    """ Generate n_input_configs input configurations for covasim at radnom.
    :param n_input_configs: Number of input configurations to generate.
    :param fixed_params: Dictionary of parameters which should remain fixed, where key = variable name and value =
                         value to fix.
    :param variable_params: Dictionary of parameters which should be randomly generated, where key = variable name
                            and value = distribution info.
    :return: List of input configurations, each of which is a params dictionary for Covasim.
    """
    input_configs = []
    for n in range(n_input_configs):
        input_config = {}
        for fixed_input, value in fixed_params.items():
            input_config[fixed_input] = value
        for variable_input, distribution in variable_params.items():
            if type(distribution) == list:
                input_config[variable_input] = generate_observational_data_from_param_list(distribution, 1)[0]
            else:
                mean, var = distribution
                input_config[variable_input] = generate_observational_data_from_normal_distribution(mean, var, 1)[0]
        input_config["rand_seed"] = np.random.randint(1, 10000)
        input_configs.append(input_config)
    return input_configs


def run_age_restricted_vaccine_experiment(n_input_configs, n_runs, alphas):
    """
    Run the age restricted vaccine experiment with n_input_configs randomly generated input configurations.
    Run each input configuration n_repeats times. Each input configuration is ran and repeated for each alpha
    value.

    :param n_input_configs: Number of input configurations to generate.
    :param n_runs: Number of times to run each input configuration (for each alpha).
    :param alphas: List of alpha values that determine the level of covariate imbalance between the treatment
                   and control group. A high value means low imbalance and a low value means a high imbalance.
    """
    input_configs = generate_input_configs(n_input_configs, FIXED_PARAMS, VARIABLE_PARAMS)
    input_config_results_dfs = []
    # Run covasim with each input configuration for each alpha setting n_runs times
    for i, input_config in enumerate(input_configs):
        print(f"Input configuration {i+1}/{n_input_configs}")
        print(input_config)
        input_config_results_df = run_covasim_with_biases(alphas, LOCATIONS, input_config, n_runs, i)
        input_config_results_dfs.append(input_config_results_df)
    all_input_config_results_df = pd.concat(input_config_results_dfs)
    all_input_config_results_df.to_csv("./age_restricted_vaccine_experiment_1ic_20r_2_countries.csv")


if __name__ == "__main__":
    run_age_restricted_vaccine_experiment(1, 20, [1, 0.4, 0.2, 0.1, 0.05, 0.025])
    compare_association_to_causation("./age_restricted_vaccine_experiment_1ic_20r_2_countries.csv")
