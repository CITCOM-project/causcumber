from dowhy import CausalModel
import pandas as pd
import glob
import os

""" What is the causal effect of increasing bucket volume on day 9 from 0.5ft^3 to 2ft^3 on the remaining volume of
    water after 10 days? """

raw_bucket_model_df = pd.concat(map(pd.read_csv, glob.glob(os.path.join("results", "*.csv"))))


def process_bucket_model_df(df):
    """ Reformat the output of the bucket model df so that it can be used by DoWhy.
        Column names need to match causal graph and thus need to merge execution into
        a single row.
    """

    # First add columns for constant variables
    dowhy_compatible_df = pd.DataFrame({"height": [], "diameter": [], "bucket_volume": [], "surface_area": []})

    # For each time varying variable, add a column for each day
    simulation_days = int(max(df["day"]))
    for day in range(simulation_days):
        dowhy_compatible_df["water_volume_t{}".format(day)] = []
        dowhy_compatible_df["wind_speed_t{}".format(day)] = []
        dowhy_compatible_df["temperature_t{}".format(day)] = []

    # Populate new data frame with data
    time_varying_variables = {}
    for row in df.itertuples():

        if not row.day:  # Only update time fixed variables on day 0
            static_variables = {"height": row.height, "diameter": row.diameter, "bucket_volume": row.bucket_volume,
                                "surface_area": row.surface_area}

        # Add time varying variables for all days
        time_varying_variables["water_volume_t{}".format(int(row.day))] = row.water_volume
        time_varying_variables["wind_speed_t{}".format(int(row.day))] = row.wind_speed
        time_varying_variables["temperature_t{}".format(int(row.day))] = row.temperature

        if int(row.day) == 10:  # Final day
            all_variables = {**static_variables, **time_varying_variables}
            dowhy_compatible_df = dowhy_compatible_df.append(all_variables, ignore_index=True)
            time_varying_variables = {}
            static_variables = {}
    dowhy_compatible_df.to_csv("./bucket_evaporation_data.csv")


# Format data into dowhy compatible format
process_bucket_model_df(raw_bucket_model_df)

# Obtain causal estimate
bucket_model_df = pd.read_csv("bucket_evaporation_data.csv")
causal_model = CausalModel(bucket_model_df, treatment="water_volume_t9", outcome="water_volume_t10",
                           graph="bucket_evaporation.dot")
causal_estimand = causal_model.identify_effect(proceed_when_unidentifiable=True, method_name="minimal-adjustment")
causal_estimate = causal_model.estimate_effect(causal_estimand, method_name="backdoor.linear_regression",
                                               treatment_value=100, control_value=25)

# Obtain associational estimate (not adjusted for bucket volume)
unadjusted_model = CausalModel(bucket_model_df, treatment="water_volume_t9", outcome="water_volume_t10",
                               common_causes=[])
unadjusted_estimand = unadjusted_model.identify_effect(proceed_when_unidentifiable=True)
unadjusted_estimate = unadjusted_model.estimate_effect(unadjusted_estimand, method_name="backdoor.linear_regression",
                                                       treatment_value=100, control_value=25)

# Compare
print("Adjusting for {} yields a causal estimate of {}.".format(causal_estimand.get_backdoor_variables(),
                                                                causal_estimate.value))
print("Without adjustment yields an estimate of {}.".format(unadjusted_estimate.value))
