Feature: Populus
  We test different basic population features of covasim such as location and size.

  Background: Baseline
    Given a simulation run with the basic parameters:
      * pop_type=hybrid
      * pop_size=50000
      * pop_infected=100
      * n_days=84
    And final values for variables:
      * cum_infections
      * cum_symptomatic
      * cum_severe
      * cum_critical
      * cum_deaths
      * cum_diagnoses
      * cum_quarantined

  Scenario: Japan
    Given
      * location=Japan
    When the simulation is complete
    Then the "cum_deaths" should be "more than" Baseline # because they have an older population

  Scenario: Rwanda
  Given
    * location=Rwanda
  When the simulation is complete
  Then the "cum_deaths" should be "less than" Baseline # because they have an younger population

  Scenario: Large population
    Given
      * location=?
      * population=100000
    When the simulation is complete
    Then the "cum_cases" should be "more than" Baseline
    # This is not a causal property in and of itself
    # We need to add a derived variable for "peak_at" if we want to use CI for this
    # Otherwise it's just an association on the raw data
    And the peak should appear later

  # The model doesn't inherently take seasonal variation into account, so this won't hold
  # We need to check whether a real epidemiologist would expect this to happen or whether it's just confounding like schools going back or whatever
  Scenario: Winter vs Summer
    Given a simulation "Summer" run with the basic parameters:
      * n_days=None
      * start_day=2020-06-01
      * end_day=2020-08-31
    And a simulation "Winter" run with the basic parameters:
      * n_days=None
      * start_day=2020-11-01
      * end_day=2020-02-28
    When the simulations are complete
    Then the "cum_deaths" for "Summer" should be "less than" that for "Winter"
