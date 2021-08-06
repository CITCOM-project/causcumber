import matplotlib.pyplot as plt
import pandas as pd
import glob
import os
plt.style.use("ggplot")


def plot_data_vs_ate(data_dir):
    """ Plot the amount of data used against the ATE for each vaccine with 95% confidence intervals. """
    df = combine_csvs(data_dir)
    percentages = list(df["percentage"].unique())
    vaccines = list(df["vaccine"].unique())
    fig, ax = plt.subplots()
    ax.set_title("Amount of Data vs. Causal Estimate")
    ax.set_ylabel("Causal Estimate")
    ax.set_xlabel("Percentage of Data Used")
    for vaccine in vaccines:
        estimates = []
        intervals = []
        for percentage in percentages:
            result_row = df.loc[(df["percentage"] == percentage) & (df["vaccine"] == vaccine)]
            estimates.append(result_row["causal_estimate"].values[0])
            intervals.append([result_row["ci_low"].values[0], result_row["ci_high"].values[0]])
        ax.plot(percentages, estimates, label=vaccine)
        intervals_low = [interval[0] for interval in intervals]
        intervals_high = [interval[1] for interval in intervals]
        ax.fill_between(percentages, intervals_low, intervals_high, alpha=.2)

    plt.legend()
    plt.tight_layout()
    plt.show()
    fig.savefig(os.path.join(data_dir, "data_vs_causal_estimate.png"), format="png", dpi=150)



def combine_csvs(data_dir):
    path = data_dir
    all_csvs = glob.glob(path + "/*.csv")

    run_dfs = []

    for filename in all_csvs:
        df = pd.read_csv(filename, header=0)
        df = df[["vaccine", "causal_estimate", "ci_low", "ci_high"]]
        df["percentage"] = filename[-6:-4]
        run_dfs.append(df)
    df = pd.concat(run_dfs, axis=0, ignore_index=True)
    df["percentage"] = df["percentage"].astype(int)
    return df.sort_values(by=["percentage"])


plot_data_vs_ate("./results/percentage_executions/")