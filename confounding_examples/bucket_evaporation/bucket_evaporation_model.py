""" A simple computational model that simulates the evaporation of water
    from a bucket over a number of days in terms of the volume of water
    remaining in the bucket.

    This model has an input which is constant over time (volume of bucket)
    and two inputs that vary over time (rain and temperature). All of the
    inputs affect the depth at each day. However, since the volume is
    constant, it confounds the effect of rain and temperature which are
    assumed to change daily. """

import random
import math
import pandas as pd
import matplotlib.pyplot as plt


class BucketEvaporationModel:
    """ Simulate the evaporation of a water from a bucket on a daily basis.

        Bucket is specified in terms of height (ft) and diameter (ft), and the number of days to simulate is chosen.

        Temperature (farenheit) and wind speed (ms^-1) are picked at random on a daily basis.

        """

    # https://owlcation.com/stem/The-Amazing-and-Remarkable-Properties-of-Water
    WATER_VAPOUR_PRESSURE_mmHG_AT_TEMPERATURE_F = {40: 6.309, 50: 9.205, 60: 13.239, 70: 18.773, 80: 26.168}

    def __init__(self, height, diameter):
        self.height = height
        self.diameter = diameter
        self.day = 0
        self.wind_speed = 0
        self.temperature = 0
        self.surface_area = self._calculate_surface_area()
        self.bucket_volume = self._calculate_bucket_volume()
        self.water_volume = self.bucket_volume  # bucket starts full
        self.log = pd.DataFrame({"id": [], "day": [], "wind_speed": [], "temperature": [], "bucket_volume": [],
                                 "water_volume": [], "height": [], "diameter": [], "surface_area": []})

    def simulate(self, days_to_simulate, n_repeats):
        """ Run the model in daily time-steps, generating random wind speed and temperature, and
        recording the results each day. """
        # On the first day, select a random wind and temperature and record
        for n in range(n_repeats):
            self._random_wind_speed()
            self._random_temperature()
            self._log_results(n)
            while self.day < days_to_simulate:
                # Step to the next day
                self._next_day()
                # What is today's wind and temperature
                self._random_wind_speed()
                self._random_temperature()
                # Calculate water evaporated and log
                self._calculate_volume_evaporated()
                self._log_results(n)
            # Reset variables
            self.day = 0
            self.wind_speed = 0
            self.temperature = 0
            self.water_volume = self.bucket_volume

    def plot_results(self):
        """ Plot line graph of water evaporation over duration. """
        fig, ax = plt.subplots()
        for execution in range(int(max(self.log["id"])) + 1):
            xs = self.log[self.log["id"] == execution]["day"].to_list()
            ys = self.log[self.log["id"] == execution]["water_volume"].to_list()
            ax.plot(xs, ys)
        ax.set_xlabel("Days")
        ax.set_ylabel("Water Volume (Cubic Feet)")
        ax.set_title("Water Evaporation from Bucket")
        plt.show()

    def save_results(self, file_path):
        """ Save log results to csv. """
        self.log.to_csv(file_path + ".csv")

    def _next_day(self):
        """ Progress simulation to the next day. """
        self.day += 1

    def _log_results(self, execution_id):
        """ Log results into dataframe. """
        daily_readings = pd.Series({"id": execution_id, "day": self.day, "wind_speed": self.wind_speed,
                                    "temperature": self.temperature, "bucket_volume": self.bucket_volume,
                                    "water_volume": self.water_volume, "height": self.height,
                                    "diameter": self.diameter, "surface_area": self.surface_area})
        self.log = self.log.append(daily_readings, ignore_index=True)

    def _random_wind_speed(self):
        """ Random wind speed in ms^-1. """
        self.wind_speed = random.choice([0, 0.5, 1, 1.5, 2])

    def _random_temperature(self):
        """ Random temperature in farenheit. """
        self.temperature = random.choice([40, 50, 60, 70, 80])

    def _calculate_volume_evaporated(self):
        """ Calculate the volume of water evaporated using the equation from:
            https://dengarden.com/swimming-pools/Determine-Evaporation-Rate-for-Swimming-Pool

            Subtract from previous volume.
        """

        water_vapour_pressure_at_temp = self.WATER_VAPOUR_PRESSURE_mmHG_AT_TEMPERATURE_F[self.temperature]
        evaporation_rate_litres_per_day = 4.54609 * ((7.4 * water_vapour_pressure_at_temp * self.surface_area *
                                                      math.pow((0.447 * self.wind_speed),
                                                               0.78)) / (self.temperature + 459.67))
        self.water_volume -= evaporation_rate_litres_per_day

        # Volume can't be less than zero
        if self.water_volume < 0:
            self.water_volume = 0

    def _calculate_bucket_volume(self):
        """ Return the bucket volume in litres. """
        return self.height * self.surface_area * 28.3168

    def _calculate_surface_area(self):
        """ Return surface area in ft^2. """
        return math.pi * (self.diameter / 2) ** 2


if __name__ == "__main__":
    bucket_evaporation_model = BucketEvaporationModel(5, 9)
    bucket_evaporation_model.simulate(10, 100)
    bucket_evaporation_model.plot_results()
    bucket_evaporation_model.save_results("./results/bucket_evaporation_5h_9d")


