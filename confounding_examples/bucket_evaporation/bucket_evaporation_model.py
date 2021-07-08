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
        self.day = 0
        self.wind_speed = 0
        self.temperature = 0
        self.surface_area = self._calculate_surface_area(diameter)
        self.bucket_volume = self._calculate_bucket_volume(height)
        self.volume = self.bucket_volume  # bucket starts full
        self.log = pd.DataFrame({"Execution ID": [], "Day": [], "Wind Speed": [], "Temperature": [], "Volume": []})

    def simulate(self, days_to_simulate, n_repeats):
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
            self.volume = self.bucket_volume

    def plot_results(self):
        fig, ax = plt.subplots()
        for execution in range(int(max(self.log["Execution ID"])) + 1):
            xs = self.log[self.log["Execution ID"] == execution]["Day"].to_list()
            ys = self.log[self.log["Execution ID"] == execution]["Volume"].to_list()
            ax.plot(xs, ys)
        ax.set_xlabel("Days")
        ax.set_ylabel("Volume (Cubic Feet)")
        plt.show()

    def _next_day(self):
        self.day += 1

    def _log_results(self, execution_id):
        daily_readings = pd.Series({"Execution ID": execution_id, "Day": self.day, "Wind Speed": self.wind_speed,
                                    "Temperature": self.temperature, "Volume": self.volume})
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
        """

        water_vapour_pressure_at_temp = self.WATER_VAPOUR_PRESSURE_mmHG_AT_TEMPERATURE_F[self.temperature]
        evaporation_rate_litres_per_day = 4.54609 * ((7.4 * water_vapour_pressure_at_temp * self.surface_area *
                                                      math.pow((0.447 * self.wind_speed),
                                                               0.78)) / (self.temperature + 459.67))
        self.volume -= evaporation_rate_litres_per_day

        # Volume can't be less than zero
        if self.volume < 0:
            self.volume = 0

    def _calculate_bucket_volume(self, height):
        return height * self.surface_area

    @staticmethod
    def _calculate_surface_area(diameter):
        return math.pi * (diameter / 2) ** 2


if __name__ == "__main__":
    bucket_evaporation_model = BucketEvaporationModel(10, 2)
    bucket_evaporation_model.simulate(31, 10)
    bucket_evaporation_model.plot_results()


