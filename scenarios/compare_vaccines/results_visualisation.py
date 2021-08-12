import matplotlib.pyplot as plt
import pandas as pd
import glob
import os
from causcumber_utils import dagitty_identification, covariate_imbalance
from math import floor, ceil
plt.style.use("ggplot")


def plot_data_vs_ate(data_dir):
    """ Plot the amount of data used against the ATE for each vaccine with 95% confidence intervals. """
    df = combine_csvs_by_percentage(data_dir)
    percentages = list(df["percentage"].unique())
    print(percentages)
    vaccines = list(df["vaccine"].unique())
    fig, ax = plt.subplots()
    ax.set_title("Amount of Data vs. Causal Estimate")
    ax.set_ylabel("Causal Estimate")
    ax.set_xlabel("Percentage of Data Used")
    ax.set_xticks(percentages)
    for vaccine in vaccines:
        estimates = []
        intervals = []
        for percentage in percentages:
            result_row = df.loc[(df["percentage"] == percentage) & (df["vaccine"] == vaccine)]
            estimates.append(result_row["causal_estimate"].values[0])
            intervals.append([result_row["ci_low"].values[0], result_row["ci_high"].values[0]])
        ax.plot(percentages, estimates, label=vaccine)
        # intervals_low = [interval[0] for interval in intervals]
        # intervals_high = [interval[1] for interval in intervals]
        # ax.fill_between(percentages, intervals_low, intervals_high, alpha=.2)

    plt.legend()
    plt.tight_layout()
    plt.show()
    fig.savefig(os.path.join(data_dir, "data_vs_causal_estimate.png"), format="png", dpi=150)


def plot_covariate_imbalance_vs_ate(causal_inference_data_dir, run_data_dir):
    run_data_csvs = glob.glob(run_data_dir + "/*.csv")
    for file_path in run_data_csvs:
        imbalance = round(get_imbalance_score(file_path, "./dags/simple_confounding_dag.dot"), 2)
        file_name = file_path.replace(run_data_dir, '')
        # Open causal inference results for this run data and add imbalance
        causal_inference_results_path = os.path.join(causal_inference_data_dir, f"single_vaccine_{file_name}")
        association_results_path = causal_inference_results_path.replace(".csv", "_no_adjustment.csv")
        causal_inference_df = pd.read_csv(causal_inference_results_path)
        association_results_df = pd.read_csv(association_results_path)
        causal_inference_df["imbalance"] = imbalance
        association_results_df["imbalance"] = imbalance
        causal_inference_df["method"] = "causal_inference"
        association_results_df["method"] = "association"
        causal_inference_df.to_csv(causal_inference_results_path)
        association_results_df.to_csv(association_results_path)
    df = combine_csvs_by_imbalance(causal_inference_data_dir)
    # ground_truth_df = pd.read_csv("./results/single_vaccine_causal_inference_all.csv")
    vaccines = list(df["vaccine"].unique())
    imbalances = list(df["imbalance"].unique())
    methods = list(df["method"].unique())
    fig, axes = plt.subplots(1, 3, figsize=(15, 5))
    fig.suptitle("Covariate Imbalance vs. Causal Estimate")
    min_imbalance, max_imbalance = round(min(imbalances), 2), round(max(imbalances), 2)
    print(min_imbalance, max_imbalance)
    xticks = [x/10.0 for x in range(floor(min_imbalance*10), ceil(max_imbalance*10)+1, 1)]
    for x, vaccine in enumerate(vaccines):
        axes[x].set_title(vaccine.capitalize())
        axes[x].set_ylabel("Causal Estimate")
        axes[x].set_xlabel("Covariate Imbalance")
        axes[x].set_xticks(xticks)
        axes[x].set_ylim(-2000, -3500)
        # ground_truth_causal_effect = ground_truth_df.loc[ground_truth_df["vaccine"] == vaccine]["causal_estimate"]
        for method in methods:
            estimates = []
            intervals = []
            for imbalance in imbalances:
                result_row = df.loc[(df["imbalance"] == imbalance) & (df["vaccine"] == vaccine)
                                    & (df["method"] == method)]
                estimates.append(result_row["causal_estimate"].values[0])
                intervals.append([result_row["ci_low"].values[0], result_row["ci_high"].values[0]])
            axes[x].plot(imbalances, estimates, label=method)
        # axes[x].plot(imbalances, [ground_truth_causal_effect]*len(imbalances), label="ground truth", linestyle="--",
        #              color="black")
            # intervals_low = [interval[0] for interval in intervals]
            # intervals_high = [interval[1] for interval in intervals]
            # axes[x].fill_between(imbalances, intervals_low, intervals_high, alpha=.2)

    plt.legend()
    plt.tight_layout()
    plt.show()
    fig.savefig(os.path.join(causal_inference_data_dir, "covariate_imbalance_vs_causal_estimate.png"), format="png",
                dpi=150)


def combine_csvs_by_percentage(data_dir):
    all_csvs = glob.glob(data_dir + "/*.csv")
    run_dfs = []

    for filename in all_csvs:
        df = pd.read_csv(filename, header=0)
        df = df[["vaccine", "causal_estimate", "ci_low", "ci_high"]]
        percentage = filename[-7:-4]
        if not percentage.isnumeric():
            percentage = percentage[1:]
            print(percentage)
        df["percentage"] = percentage
        run_dfs.append(df)
    df = pd.concat(run_dfs, axis=0, ignore_index=True)
    df["percentage"] = df["percentage"].astype(int)
    return df.sort_values(by=["percentage"])


def combine_csvs_by_imbalance(data_dir):
    # TODO: make a single combine_csvs_by_col method
    all_csvs = glob.glob(data_dir + "/*.csv")
    run_dfs = []
    for filename in all_csvs:
        df = pd.read_csv(filename, header=0)
        df = df[["vaccine", "causal_estimate", "ci_low", "ci_high", "imbalance", "method"]]
        run_dfs.append(df)
    df = pd.concat(run_dfs, axis=0, ignore_index=True)
    df["imbalance"] = df["imbalance"].astype(float)
    return df.sort_values(by=["imbalance"])


def get_imbalance_score(csv_path, causal_graph_path):
    df = pd.read_csv(csv_path)
    adjustment_set = dagitty_identification(causal_graph_path, "interventions", "cum_infections_5")
    df["location"] = df["location"].astype("category")
    df["interventions"] = df["interventions"].astype("category")
    df["pop_type"] = df["pop_type"].astype("category")
    imbalance_score = covariate_imbalance(df, adjustment_set, "interventions")
    print(f"Imbalance score: {imbalance_score}")
    return imbalance_score


plot_data_vs_ate("./results/percentage_executions/")
plot_covariate_imbalance_vs_ate("./results/RQ2/", "./observational_data/RQ2/")