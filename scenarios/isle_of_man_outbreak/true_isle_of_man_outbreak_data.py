import pandas as pd
import matplotlib.pyplot as plt
import matplotlib.dates as mdates
import datetime as dt
from math import ceil
plt.rcParams['text.usetex'] = True
plt.rcParams['text.latex.preamble'] = r"\usepackage{libertine}"

WHO_COVID_19_DATA_PATH = "./data/WHO-COVID-19-global-data.csv"


def get_country_covid_19_data_from_who_data(who_csv_path, country):
    """
    Get the subset of data for a given country from the World Health Organisation COVID-19 data:
    (https://covid19.who.int/WHO-COVID-19-global-data.csv).

    @param who_csv_path: path to the WHO COVID-19 csv.
    @param country: country whose data is required.
    @return: dataframe containing the COVID-19 data for the specified country only.
    """
    covid_19_data = pd.read_csv(who_csv_path)
    country_covid_19_data = covid_19_data[covid_19_data["Country"] == country]
    return country_covid_19_data


def plot_from_df(covid_19_df, title, output_png_path, start_date=None, end_date=None):
    # Convert dates to date time and filter to dates within specified range
    covid_19_df["Date_reported"] = pd.to_datetime(covid_19_df["Date_reported"])
    if start_date:
        start_date = dt.datetime.strptime(start_date, "%d/%m/%Y")
        covid_19_df = covid_19_df[covid_19_df["Date_reported"] >= start_date]
    if end_date:
        end_date = dt.datetime.strptime(end_date, "%d/%m/%Y")
        covid_19_df = covid_19_df[covid_19_df["Date_reported"] <= end_date]
    dates = list(covid_19_df["Date_reported"].dt.strftime("%d/%m/%Y"))
    # Get data for each plot
    cases = covid_19_df["New_cases"]
    cum_infections = covid_19_df["Cumulative_cases"]
    deaths = covid_19_df["New_deaths"]
    cum_deaths = covid_19_df["Cumulative_deaths"]
    plot_data = [(cases, "New Cases"), (cum_infections, "Cumulative Infections"),
                 (deaths, "New Deaths"), (cum_deaths, "Cumulative Deaths")]

    # Plot data
    n_cols = 1
    n_rows = ceil(len(plot_data) / n_cols)
    fig, axes = plt.subplots(n_rows, n_cols)

    for i, ax in enumerate(axes.ravel()):
        outcome_data, label = plot_data[i]
        ax.plot(dates, outcome_data, color="red", linewidth=1.1)
        ax.set_title(label)
        ax.set_xlim([dates[0], dates[-1]])
        ax.set_ylim([0, 1.2*max(outcome_data)])
        ax.xaxis.set_major_locator(mdates.DayLocator(interval=14))
        ax.tick_params(axis='x', labelrotation=45, labelsize=8)
        ax.tick_params(axis='y', labelsize=8)
    height = 4 * n_rows
    width = 8 * n_cols
    fig.set_size_inches(width, height)
    fig.suptitle(title)
    fig.tight_layout()
    fig.show()
    fig.savefig(output_png_path, dpi=300, format="png")


if __name__ == "__main__":
    isle_of_man_covid_19_data = get_country_covid_19_data_from_who_data(WHO_COVID_19_DATA_PATH, "Isle of Man")
    plot_from_df(isle_of_man_covid_19_data, "Isle of Man COVID-19 Cases and Deaths",
                 "data/true_isle_of_man_pandemic.png")
