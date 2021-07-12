Feature: Populus
  We test different basic population features of covasim such as location and size.

  Background:
    # To be fair, even these parameters don't actually matter. They just need to be the same for all executions or randomised
    Given every simulation is executed with:
    * a "population size"
    * "num infected" initial infectious people
    * a "start date"
    * an "end date"

  Scenario: Japan
    Given the simulation is executed for
      * in Japan
      * no interventions
    When the simulation is complete
    Then the cumulative number of deaths should be > UK for the same population (because Japan has an older population)

  Scenario: Rwanda
    Given the simulation is executed for
      * in Rwanda
      * no interventions
    When the simulation is complete
    Then the cumulative number of deaths should be << UK for the same population (because Rwanda has a much younger population)

  Scenario: Large population
    Given the simulation is executed for
      * a "location"
    When the simulation is complete
    Then the cumulative number of cases should be proportional to the population size
    And the peak should occur later (I'm not sure if it should be, but it is...)

  # The model doesn't inherently take seasonal variation into account, so this won't hold
  # We need to check whether a real epidemiologist would expect this to happen or whether it's just confounding like schools going back or whatever
  Scenario: Winter vs Summer
    Given the simulation is executed
    When the simulation is complete
    Then the cumulative number of cases/deaths should be more if the simulation was run in winter than in summer
