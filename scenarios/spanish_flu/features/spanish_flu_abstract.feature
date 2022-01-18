Feature: Spanish Flu Abstract
  Background: IO spec
    Given a simulation with parameters
      | parameter       | type  | distribution                         |
      | n_days          | int   | stats.betabinom(60, 2, 3, loc=60)    |
      | quar_period     | int   | stats.binom(n=25, p=0.5)             |
      | pop_size        | int   | stats.betabinom(100000, 15, 100)     |
      | pop_infected    | int   | stats.betabinom(1000, 1, 5, loc=100) |
      | location        | str   | countries                            |
      | symp_prob       | float | stats.beta(a=1.5, b=2)               |
      | asymp_prob      | float | stats.beta(a=1.5, b=2)               |
      | symp_quar_prob  | float | stats.beta(a=0.8, b=5)               |
      | asymp_quar_prob | float | stats.beta(a=1.5, b=2)               |
      | trace_probs     | float | stats.beta(a=1.5, b=2)               |
    And the following meta variables
      | variable        | type  |
      | average_age     | int   |
      | household_size  | float |
    And the following variables are recorded at the end of the simulation
      | variable        | type |
      | cum_quarantined | int  |
      | cum_infections  | int  |
      | cum_deaths      | int  |

  Scenario: P(Mortality) decrease
    When we decrease P(Mortality) by a factor of n
    Then Decreases the number of Deceased by less than *n
    And Decreases the number of Recovered by more than 1/n

  Scenario: P(Mortality) increase
    When we increase P(Mortality) by a factor of n
    Then Decreases the number of Deceased by less than *n
    And Decreases the number of Recovered by more than 1/n

  Scenario: N(Infectious) decrease
    When we decrease N(Infectious) by a factor of n
    Then In ODE, this transformation stretches out the start time; in the agent model, the start time is moved to the right.

  Scenario: N(Infectious) increase
    When we increase N(Infectious) by a factor of n
    Then In ODE, this transformation stretches out the start time; in the agent model, the start time is moved to the right.

  Scenario: T(Die) decrease
    When we decrease T(Die) by a factor of n
    Then Decreases the number of people infected, which in turn decreases the number of Deceased

  Scenario: T(Die) increase
    When we increase T(Die) by a factor of n
    Then Decreases the number of people infected, which in turn increases the number of Deceased

  Scenario: P(Transmission) decrease
    When we decrease P(Transmission) by a factor of n
    Then Decreases the number of people infected, which in turn decreases the numbers of Deceased and Recovered

  Scenario: P(Transmission) increase
    When we increase P(Transmission) by a factor of n
    Then Decreases the number of people infected, which in turn decreases the numbers of Deceased and Recovered

  Scenario: T(Incubate) decrease
    When we decrease T(Incubate) by a factor of n
    Then Compresses the model timeline, with related changes in other parameters

  Scenario: T(Incubate) increase
    When we increase T(Incubate) by a factor of n
    Then Compresses the model timeline, with related changes in other parameters

  Scenario: T(Recovery) decrease
    When we decrease T(Recovery) by a factor of n
    Then Decreases the number of infectious (the number of cases), which in turn decreases the rate of Deceased

  Scenario: T(Recovery) increase
    When we increase T(Recovery) by a factor of n
    Then Decreases the number of infectious (the number of cases), which in turn increases the rate of Deceased

  Scenario: Rate(Encounter) decrease
    When we decrease Rate(Encounter) by a factor of n
    Then Decreases the number of cases, which in turn decreases the rate of Deceased

  Scenario: Rate(Encounter) increase
    When we increase Rate(Encounter) by a factor of n
    Then Decreases the number of cases, which in turn incrases the rate of Deceased
