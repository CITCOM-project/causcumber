import pandas as pd
import numpy as np
import covasim as cv
import matplotlib.pyplot as plt
import sys
import time
from dowhy import CausalModel
sys.path.append("../../")
from causcumber_utils import covariate_imbalance
from covasim_utils import run_covasim_by_week, preprocess_data
from sklearn.linear_model import LinearRegression

LOCATIONS = ["UK", "France"]
FIXED_PARAMS = {"n_days": 35, "pop_type": "hybrid", "use_waning": True, "pop_size": 50000, "pop_infected": 100}
# VARIABLE_PARAMS = {"pop_size": (50000, 5000), "pop_infected": (100, 10)}
VARIABLE_PARAMS = {}
DESIRED_OUTPUTS = ["cum_infections", "cum_deaths", "cum_vaccinated"]


class StoreAverageAge(cv.Analyzer):
    """ Get the average age of all agents in the simulation on the start day. This is to avoid keeping people from
        simulation runs which requires a lot of memory. """
    initialized: bool

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.avg_age = 0
        return

    def apply(self, sim):
        if sim.t == 0:
            self.avg_age = np.average(sim.people.age)
        return

    def get_age(self):
        return self.avg_age


def run_covasim_by_week_with_age_dist(label, run_params, age_dist, desired_outputs, n_runs=30):
    print("Params", run_params)
    intervention = run_params["interventions"]
    cv.data.country_age_data.data[run_params["location"]] = age_dist
    intervention_sim = cv.MultiSim(cv.Sim(pars=run_params, analyzers=StoreAverageAge(), label=label, verbose=0))
    intervention_sim.run(n_runs=n_runs, verbose=0)
    temporal = []
    for s, sim in enumerate(intervention_sim.sims):
        df = sim.to_df()
        df = df[desired_outputs]
        week_by_week = pd.DataFrame(aggregate_by_week(df, desired_outputs))
        dic = week_by_week.to_dict(orient='list')
        week_dic = {f"{k}_{w + 1}": item for k in desired_outputs for w, item in enumerate(dic[k])}
        run_params["interventions"] = label
        for k, v in run_params.items():
            week_dic[k] = v
        temporal.append(week_dic)
        week_dic["avg_age"] = StoreAverageAge.get_age(sim.get_analyzer())
        week_dic["age_dist"] = age_dist
        week_dic["rand_seed"] = sim.pars["rand_seed"]
        run_params["interventions"] = intervention
    return pd.DataFrame(temporal)


def aggregate_by_week(data, desired_outputs=None):
    if desired_outputs is None:
        desired_outputs = data.columns
    week_by_week = {k: [] for k in desired_outputs}
    for c in chunks(data, 7):
        for k in week_by_week:
            if k.startswith('new_'):
                week_by_week[k].append(c[k].sum())
            elif k.startswith('n_'):
                week_by_week[k].append(c[k].iloc[-1])
            else:
                week_by_week[k].append(c[k].iloc[0])
    return pd.DataFrame(week_by_week)


def chunks(lst, n):
    """ Yield successive n-sized chunks from list. """
    for i in range(0, len(lst), n):
        yield lst[i:i + n]


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
    """ Make elderly individuals more likely to receive vaccine than younger individuals. This is used
        to introduce confounding by age to the effect of vaccination on cumulative infections.

    :param sim: A Covasim Simulation which this vaccination method should be applied to.
    :return output: A dictionary which maps agents to a vaccination probability based on age.
    """

    young = cv.true(sim.people.age < 50)
    middle = cv.true((sim.people.age >= 50) * (sim.people.age < 75))
    old = cv.true(sim.people.age > 75)
    people = sim.people.uid
    vaccinate_probabilities = np.ones(len(sim.people))
    vaccinate_probabilities[young] = 0.1
    vaccinate_probabilities[middle] = 0.5
    vaccinate_probabilities[old] = 0.9
    output = dict(inds=people, vals=vaccinate_probabilities)
    return output


def run_covasim_with_age_bias(target_imbalance, params, n_runs, age_dists, identifier):
    results_lists = []
    params["location"] = "UK"
    default_age_index = len(age_dists) // 2
    default_age_dist = age_dists[default_age_index][1]  # Get middle item in list

    control_params = params.copy()
    treatment_params = params.copy()

    # 1. Generate the outcome of the target trial
    control_params["interventions"] = None
    treatment_params["interventions"] = cv.vaccinate_prob(vaccine="pfizer", label="pfizer",
                                                          days=list(range(35)),
                                                          subtarget=vaccinate_by_age)
    treatment_results = run_covasim_by_week_with_age_dist("treatment", treatment_params, default_age_dist,
                                                          desired_outputs=DESIRED_OUTPUTS, n_runs=1)
    control_results = run_covasim_by_week_with_age_dist("control", control_params, default_age_dist,
                                                        desired_outputs=DESIRED_OUTPUTS, n_runs=1)

    results_lists += [treatment_results, control_results]

    # 2. Generate a treatment and control age distribution
    n_runs = int((n_runs - 2) / 2)
    if (default_age_index + int(target_imbalance / 2)) <= (len(age_dists) - 1) and \
            (default_age_index - int(target_imbalance / 2)) >= 0:
        # Make the majority of the treatment group old
        treatment_age_dist_index = default_age_index + int(target_imbalance / 2)
        treatment_age_dist = age_dists[treatment_age_dist_index][1]
        print(f"Treatment age dist location: {age_dists[treatment_age_dist_index][0]}")
        # Make the majority of the control group young
        control_age_dist_index = default_age_index - int(target_imbalance / 2)
        control_age_dist = age_dists[control_age_dist_index][1]
        old_age_treatment_results = run_covasim_by_week_with_age_dist("treatment",
                                                                      treatment_params,
                                                                      treatment_age_dist,
                                                                      desired_outputs=DESIRED_OUTPUTS,
                                                                      n_runs=int(n_runs * .8))

        young_age_treatment_results = run_covasim_by_week_with_age_dist("treatment",
                                                                        treatment_params,
                                                                        control_age_dist,
                                                                        desired_outputs=DESIRED_OUTPUTS,
                                                                        n_runs=int(n_runs * .2))

        print(f"Control location age dist: {age_dists[control_age_dist_index][0]}")
        young_age_control_results = run_covasim_by_week_with_age_dist("control",
                                                                      control_params,
                                                                      control_age_dist,
                                                                      desired_outputs=DESIRED_OUTPUTS,
                                                                      n_runs=int(n_runs * .8))

        old_age_control_results = run_covasim_by_week_with_age_dist("control",
                                                                    control_params,
                                                                    treatment_age_dist,
                                                                    desired_outputs=DESIRED_OUTPUTS,
                                                                    n_runs=int(n_runs * .2))

        results_lists += [old_age_treatment_results, young_age_treatment_results,
                          young_age_control_results, old_age_control_results]
    results_df = pd.concat(results_lists, ignore_index=True)
    results_df["id"] = identifier
    results_df = preprocess_data(results_df)
    imbalance = covariate_imbalance(results_df, ["avg_age"], "interventions")
    results_df["imbalance"] = imbalance
    return results_df


def create_sorted_age_dist_list_from_cv_location_data(pop_size):
    """
    Create a list of age distributions containing pop_size agents sorted in ascending order of mean age.
    :param pop_size: The total number of agents to form the distribution.
    :return: A list of triples (location name, location distribution, location average age) sorted in ascending order
            of average age.
    """
    cv_locations_list = cv.data.show_locations(output=True)["age_distributions"]
    locations_list = []
    for location in cv_locations_list:
        if location != "Cape Verde":
            location_age_hist = cv.data.get_age_distribution(location)
            location_age_dist = convert_age_hist_to_dist(location_age_hist, pop_size)
            locations_list.append((location, location_age_dist, estimate_average_age_for_cv_location(location)))
    sorted_locations_list = sorted(locations_list, key=lambda tup: tup[2])
    return sorted_locations_list


def estimate_average_age_for_cv_location(location):
    """
    Given a location, find the age distribution from Covasim and estimate the average age by multiplying the middle
    age in each bracket by its probability density and summing.
    :param location: A string for the location name (must be valid Covasim location).
    :return: Average age for the specified location.
    """
    age_dist = cv.data.get_age_distribution(location)
    cumulative_avg_age = 0
    for age_bracket in age_dist:
        mean_age = age_bracket[:-1].mean()
        cumulative_avg_age += (mean_age * age_bracket[-1])
    return cumulative_avg_age


def create_cv_age_dist(mean, variance, n_agents):
    ages = generate_observational_data_from_normal_distribution(int(mean), int(variance), int(n_agents))
    ages = [abs(age) % 100 for age in ages]  # Max age is 100 for simplicity
    age_hist, bin_edges = np.histogram(ages, np.append(np.arange(0, 90, 10), 150))
    age_dist = {'0-9': 0,
                '10-19': 0,
                '20-29': 0,
                '30-39': 0,
                '40-49': 0,
                '50-59': 0,
                '60-69': 0,
                '70-79': 0,
                '80+': 0}
    for n in range(len(bin_edges) - 1):
        if bin_edges[n] < 71:
            key = f"{bin_edges[n]}-{bin_edges[n] + 9}"
        else:
            key = "80+"
        age_dist[key] = age_hist[n]
    return age_dist


def run_model_with_control_and_treatment_for_location(control_params, treatment_params, fixed_seed):
    """
    Run the model twice for a specific location, once with control params and once with treatment params.
    :param control_params: dictionary containing model parameters for control execution.
    :param treatment_params: dictionary containing model parameters for treatment execution.
    :param fixed_seed: whether or not to use a fixed seed.
    :return: results_df: a dataframe containing run results reported at weekly intervals.
    """
    if not fixed_seed:
        control_params["rand_seed"] = np.random.randint(1, 10000)
        treatment_params["rand_seed"] = np.random.randint(1, 10000)
    else:
        control_params["rand_seed"] = treatment_params["rand_seed"]  # Make sure they are the same
    control_results = run_covasim_by_week(label="control", params=control_params,
                                          desired_outputs=DESIRED_OUTPUTS, n_runs=1)
    treatment_results = run_covasim_by_week(label="treatment", params=treatment_params,
                                            desired_outputs=DESIRED_OUTPUTS, n_runs=1)

    return [control_results, treatment_results]


def compare_association_to_causation(csv_path, smoothing=False):
    """ Plot the relationship between imbalance and unadjusted and adjusted ATE error.
    :param csv_path: Path to csv containing observational data.
    :param smoothing: Whether or not to smooth relationship in plot using moving average.
    """
    df = pd.read_csv(csv_path)
    identifiers = list(df["id"].unique())
    identifier_specific_ates = {identifier: {"adjusted": 0, "unadjusted": 0, "imbalance": 0, "true_ate": 0}
                                for identifier in identifiers}
    for identifier in identifiers:
        sub_df = df.loc[df["id"] == identifier]
        locations = list(sub_df["location"].unique())
        imbalance = round(sub_df["imbalance"].iloc[0], 4)

        # Mathematical check: higher imbalance should result in a greater difference between ATEs obtained via
        # adjustment and no adjustment. First we need to convert categorical data to numerical categories.
        dowhy_sub_df = sub_df.copy()
        dowhy_sub_df["interventions"] = dowhy_sub_df["interventions"].replace({"control": 0, "treatment": 1})
        dowhy_sub_df["interventions"] = dowhy_sub_df["interventions"].astype(bool)
        dowhy_sub_df["location"] = dowhy_sub_df["location"].astype("category")

        # Estimate the ATE with and without adjustment
        causal_ate, causal_cis = calculate_binary_ate(dowhy_sub_df, "interventions", "cum_infections_5", 1, 0,
                                                      "avg_age", "dowhy")
        non_causal_ate, non_causal_cis = calculate_binary_ate(dowhy_sub_df, "interventions", "cum_infections_5", 1, 0,
                                                              None, "dowhy")

        # Get the true ATE
        true_ate_df = dowhy_sub_df.head(len(locations) * 2)  # These rows contain 0 imbalance and give true ATE
        true_causal_ate = calculate_binary_ate(true_ate_df, "interventions", "cum_infections_5", 1, 0, "avg_age",
                                               "stratification")

        identifier_specific_ates[identifier]["adjusted"] = causal_ate
        identifier_specific_ates[identifier]["adjusted_cis"] = [causal_cis[0][0],
                                                                causal_cis[0][1]]
        identifier_specific_ates[identifier]["unadjusted"] = non_causal_ate
        identifier_specific_ates[identifier]["unadjusted_cis"] = [non_causal_cis[0][0],
                                                                  non_causal_cis[0][1]]
        identifier_specific_ates[identifier]["imbalance"] = imbalance
        identifier_specific_ates[identifier]["true_ate"] = true_causal_ate
        identifier_specific_ates[identifier]["adjusted_error"] = true_causal_ate - causal_ate
        identifier_specific_ates[identifier]["unadjusted_error"] = true_causal_ate - non_causal_ate

    # Average any ATEs with the same imbalance
    sorted_identifier_specific_ates = dict(sorted(identifier_specific_ates.items(),
                                                  key=lambda item: item[1]["imbalance"]))
    plot_imbalance_vs_ate_error(sorted_identifier_specific_ates, smoothing=smoothing)


def plot_imbalance_vs_ate_error(id_specific_ates_dict, smoothing=False):
    """ Plot the adjusted and unadjusted ATE error relative to the target trial against imbalance.

    :param id_specific_ates_dict: A nested dictionary containing the ATE estimate for each id, sorted by ascending
                                  imbalance, of the structure: {id: {"adjusted": v}, {"unadjusted": v}, {"imbalance":
                                  v}, {"adjusted_error": v}, {"unadjusted_error": v}}.
    :param smoothing: Whether or not to smooth the relationship in the plot using moving average.
    """
    imbalances = []
    ys_adjusted = []
    ys_unadjusted = []
    ys_adjusted_error = []
    ys_unadjusted_error = []
    cis_low_adjusted, cis_high_adjusted = [], []
    cis_low_unadjusted, cis_high_unadjusted = [], []
    cis_low_adjusted_error, cis_high_adjusted_error = [], []
    cis_low_unadjusted_error, cis_high_unadjusted_error = [], []
    for _, results in id_specific_ates_dict.items():
        imbalances.append(results["imbalance"])
        ys_adjusted.append(results["adjusted"])
        ys_unadjusted.append(results["unadjusted"])
        ys_adjusted_error.append(results["adjusted_error"])
        ys_unadjusted_error.append(results["unadjusted_error"])
        cis_low_adjusted.append(results["adjusted_cis"][0])
        cis_high_adjusted.append(results["adjusted_cis"][1])
        cis_low_unadjusted.append(results["unadjusted_cis"][0])
        cis_high_unadjusted.append(results["unadjusted_cis"][1])
        cis_low_unadjusted_error = [results["true_ate"] - ci_low for ci_low in cis_low_unadjusted]
        cis_high_unadjusted_error = [results["true_ate"] - ci_high for ci_high in cis_high_unadjusted]
        cis_low_adjusted_error = [results["true_ate"] - ci_low for ci_low in cis_low_adjusted]
        cis_high_adjusted_error = [results["true_ate"] - ci_high for ci_high in cis_high_adjusted]
    if smoothing:
        window_size = 8
        ys_unadjusted = moving_average(ys_unadjusted, window_size)
        ys_adjusted = moving_average(ys_adjusted, window_size)
        ys_unadjusted_error = moving_average(ys_unadjusted_error, window_size)
        ys_adjusted_error = moving_average(ys_adjusted_error, window_size)
        cis_low_adjusted = moving_average(cis_low_adjusted, window_size)
        cis_high_adjusted = moving_average(cis_high_adjusted, window_size)
        cis_low_unadjusted = moving_average(cis_low_unadjusted, window_size)
        cis_high_unadjusted = moving_average(cis_high_unadjusted, window_size)
        imbalances = moving_average(imbalances, window_size)
    fig, axs = plt.subplots(2)
    axs[0].plot(imbalances, ys_adjusted, label="Adjusted")
    axs[0].plot(imbalances, ys_unadjusted, label="Unadjusted")
    axs[0].fill_between(imbalances, cis_low_adjusted, cis_high_adjusted, alpha=.2)
    axs[0].fill_between(imbalances, cis_low_unadjusted, cis_high_unadjusted, alpha=.2)
    axs[0].set_xlabel("Imbalance")
    axs[0].set_ylabel("ATE")
    axs[1].plot(imbalances, ys_adjusted_error, label="Adjusted")
    axs[1].plot(imbalances, ys_unadjusted_error, label="Unadjusted")
    axs[1].fill_between(imbalances, cis_low_adjusted_error, cis_high_adjusted_error, alpha=.2)
    axs[1].fill_between(imbalances, cis_low_unadjusted_error, cis_high_unadjusted_error, alpha=.2)
    axs[1].set_xlabel("Imbalance")
    axs[1].set_ylabel("ATE Error")
    axs[1].axhline(y=0, color="black", linestyle="--", alpha=.5)
    axs[0].legend()
    axs[1].legend()
    plt.tight_layout()
    plt.show()


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
        :param adjustment_var: the variables to make an adjustment for i.e. confounders.
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
        df[treatment_variable] = df[treatment_variable].astype(bool)
        causal_model = CausalModel(data=df, treatment=treatment_variable, outcome=outcome_variable,
                                   common_causes=common_causes)
        causal_estimand = causal_model.identify_effect(proceed_when_unidentifiable=True)
        causal_effect = causal_model.estimate_effect(causal_estimand, method_name="backdoor.linear_regression")
        print(causal_effect.estimator.model.summary())
        return round(causal_effect.value, 2), causal_effect.get_confidence_intervals()
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


def generate_input_configs(total_input_configs, fixed_params, variable_params):
    """ Generate total_input_configs input configurations for covasim at random.
    :param total_input_configs: Number of input configurations to generate.
    :param fixed_params: Dictionary of parameters which should remain fixed, where key = variable name and value =
                         value to fix.
    :param variable_params: Dictionary of parameters which should be randomly generated, where key = variable name
                            and value = distribution info.
    :return: List of input configurations, each of which is a params dictionary for Covasim.
    """
    input_configs = []
    for n in range(total_input_configs):
        input_config = {}
        for fixed_input, value in fixed_params.items():
            input_config[fixed_input] = value
        for variable_input, distribution in variable_params.items():
            if type(distribution) == list:
                input_config[variable_input] = generate_observational_data_from_param_list(distribution, 1)[0]
            else:
                mean, var = distribution
                input_config[variable_input] = generate_observational_data_from_normal_distribution(mean, var, 1)[0]
        input_configs.append(input_config)
    return input_configs


def convert_age_hist_to_dist(age_hist, pop_size):
    """ Given the age histogram from Covasim, convert to a population distribution by multiplying population density
        by pop_size. E.g. age bracket: (50 - 60), population density: 0.1, pop_size: 10,000 --> (50-60): 1,000.

        :param age_hist: 2D numpy array returned by Covasim for location age distribution.
        :param pop_size: The size of the population to populate.
    """
    age_dist = {}
    for row in age_hist:
        low_bracket, high_bracket, p_density = int(row[0]), int(row[1]), row[2]
        if high_bracket < 80:
            key = f"{low_bracket}-{high_bracket}"
        else:
            key = "80+"
        age_dist[key] = int(p_density * pop_size)
    return age_dist


def run_age_restricted_vaccine_experiment_age_directly(total_input_configs, n_runs, output_path):
    """
    Run the age restricted vaccine experiment with total_input_configs randomly generated input configurations.
    Run each input configuration n_repeats times. Each input configuration is ran and repeated for each alpha
    value.

    :param total_input_configs: Number of input configurations to generate.
    :param n_runs: Number of times to run each input configuration (for each alpha).
    :param output_path: String path to output csv.
    """
    input_configs = generate_input_configs(total_input_configs, FIXED_PARAMS, VARIABLE_PARAMS)
    input_config_results_dfs = []
    # Run covasim with each input configuration for each alpha setting n_runs times
    for i, input_config in enumerate(input_configs):
        print(f"Input configuration {i + 1}/{total_input_configs}")
        age_dists = create_sorted_age_dist_list_from_cv_location_data(input_config["pop_size"])
        max_target_imbalance = len(age_dists)
        target_imbalance_results_dfs = []
        for target_imbalance in range(0, max_target_imbalance, 2):  # Loop over even numbers to avoid repeat comparisons
            print(f"Target imbalance {int(target_imbalance / 2) + 1}/{(max_target_imbalance // 2) + 1}")
            identifier = f"ic{i}_ti{target_imbalance}"
            target_imbalance_results_df = run_covasim_with_age_bias(target_imbalance, input_config, n_runs, age_dists,
                                                                    identifier)
            target_imbalance_results_dfs.append(target_imbalance_results_df)
        input_config_results_df = pd.concat(target_imbalance_results_dfs)
        input_config_results_dfs.append(input_config_results_df)
    all_input_config_results_df = pd.concat(input_config_results_dfs)
    all_input_config_results_df.to_csv(output_path)


def moving_average(results_list, window_size):
    """ Converts a list of numerical values to a moving average by averaging over results within a window
        with width = window_size.

    :param results_list: List of numerical results to compute moving average over.
    :param window_size: Size of the window used to compute the moving average.
    """
    return np.convolve(results_list, np.ones(window_size), 'valid') / window_size


if __name__ == "__main__":
    n_input_configs = int(sys.argv[1]) if len(sys.argv) > 1 else 1
    n_samples = int(sys.argv[2]) if len(sys.argv) > 2 else 30
    out_path = str(sys.argv[3]) if len(sys.argv) > 3 else "imbalance_experiment_results.csv"
    print(f"n_input_configs: {n_input_configs}, n_samples: {n_samples}, out_path: {out_path}")
    start_time = time.time()
    run_age_restricted_vaccine_experiment_age_directly(n_input_configs, n_samples, out_path)
    end_time = time.time()
    print(f"Run time: {round(end_time - start_time, 2)}s")
    compare_association_to_causation(out_path, False)
