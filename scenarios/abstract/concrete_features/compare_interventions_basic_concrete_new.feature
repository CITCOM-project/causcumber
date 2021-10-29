Feature: Compare interventions basic concrete
  Background:
    Given a simulation with parameters
    | parameter       | type  | value  |
    | asymp_prob      | float | 0.01   |
    | asymp_quar_prob | float | 0.5    |
    | average_age     | int   | 24     |
    | location        | str   | Rwanda |
    | n_days          | int   | 120    |
    | pop_infected    | int   | 100    |
    | pop_size        | int   | 20000  |
    | quar_period     | int   | 5      |
    | symp_prob       | float | 0.5    |
    | symp_quar_prob  | float | 0.5    |
    | trace_probs     | float | 0.5    |
    And the following variables are recorded at the end of the simulation
    | variable        | type |
    | cum_deaths      | int  |
    | cum_infections  | int  |
    | cum_quarantined | int  |
    | cum_tests       | int  |

  @average_age__1_1_none
  Scenario: average_age -- @1.1.None
    Given we run the model with average_age=24
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should decrease

  @average_age__1_1_n_days
  Scenario: average_age -- @1.1.n_days
    Given we run the model with average_age=24
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should decrease

  @average_age__1_1_quar_period
  Scenario: average_age -- @1.1.quar_period
    Given we run the model with average_age=24
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should decrease

  @average_age__1_1_pop_size
  Scenario: average_age -- @1.1.pop_size
    Given we run the model with average_age=24
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should decrease

  @average_age__1_1_pop_infected
  Scenario: average_age -- @1.1.pop_infected
    Given we run the model with average_age=24
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 101   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should decrease

  @average_age__1_1_symp_prob
  Scenario: average_age -- @1.1.symp_prob
    Given we run the model with average_age=24
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.25  |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should decrease

  @average_age__1_1_asymp_prob
  Scenario: average_age -- @1.1.asymp_prob
    Given we run the model with average_age=24
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should decrease

  @average_age__1_1_symp_quar_prob
  Scenario: average_age -- @1.1.symp_quar_prob
    Given we run the model with average_age=24
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.25  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should decrease

  @average_age__1_1_asymp_quar_prob
  Scenario: average_age -- @1.1.asymp_quar_prob
    Given we run the model with average_age=24
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.25  |
    | trace_probs     | 0.5   |
    Then the cum_tests should decrease

  @average_age__1_1_trace_probs
  Scenario: average_age -- @1.1.trace_probs
    Given we run the model with average_age=24
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.25  |
    Then the cum_tests should decrease

  @average_age__1_2_none
  Scenario: average_age -- @1.2.None
    Given we run the model with average_age=24
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @average_age__1_2_n_days
  Scenario: average_age -- @1.2.n_days
    Given we run the model with average_age=24
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @average_age__1_2_quar_period
  Scenario: average_age -- @1.2.quar_period
    Given we run the model with average_age=24
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @average_age__1_2_pop_size
  Scenario: average_age -- @1.2.pop_size
    Given we run the model with average_age=24
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @average_age__1_2_pop_infected
  Scenario: average_age -- @1.2.pop_infected
    Given we run the model with average_age=24
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 101   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @average_age__1_2_symp_prob
  Scenario: average_age -- @1.2.symp_prob
    Given we run the model with average_age=24
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.25  |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @average_age__1_2_asymp_prob
  Scenario: average_age -- @1.2.asymp_prob
    Given we run the model with average_age=24
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @average_age__1_2_symp_quar_prob
  Scenario: average_age -- @1.2.symp_quar_prob
    Given we run the model with average_age=24
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.25  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @average_age__1_2_asymp_quar_prob
  Scenario: average_age -- @1.2.asymp_quar_prob
    Given we run the model with average_age=24
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.25  |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @average_age__1_2_trace_probs
  Scenario: average_age -- @1.2.trace_probs
    Given we run the model with average_age=24
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.25  |
    Then the cum_quarantined should decrease

  @average_age__1_3_none
  Scenario: average_age -- @1.3.None
    Given we run the model with average_age=24
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @average_age__1_3_n_days
  Scenario: average_age -- @1.3.n_days
    Given we run the model with average_age=24
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @average_age__1_3_quar_period
  Scenario: average_age -- @1.3.quar_period
    Given we run the model with average_age=24
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @average_age__1_3_pop_size
  Scenario: average_age -- @1.3.pop_size
    Given we run the model with average_age=24
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @average_age__1_3_pop_infected
  Scenario: average_age -- @1.3.pop_infected
    Given we run the model with average_age=24
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 101   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @average_age__1_3_symp_prob
  Scenario: average_age -- @1.3.symp_prob
    Given we run the model with average_age=24
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.25  |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @average_age__1_3_asymp_prob
  Scenario: average_age -- @1.3.asymp_prob
    Given we run the model with average_age=24
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @average_age__1_3_symp_quar_prob
  Scenario: average_age -- @1.3.symp_quar_prob
    Given we run the model with average_age=24
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.25  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @average_age__1_3_asymp_quar_prob
  Scenario: average_age -- @1.3.asymp_quar_prob
    Given we run the model with average_age=24
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.25  |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @average_age__1_3_trace_probs
  Scenario: average_age -- @1.3.trace_probs
    Given we run the model with average_age=24
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.25  |
    Then the cum_infections should decrease

  @average_age__1_4_none
  Scenario: average_age -- @1.4.None
    Given we run the model with average_age=24
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should increase

  @average_age__1_4_n_days
  Scenario: average_age -- @1.4.n_days
    Given we run the model with average_age=24
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should increase

  @average_age__1_4_quar_period
  Scenario: average_age -- @1.4.quar_period
    Given we run the model with average_age=24
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should increase

  @average_age__1_4_pop_size
  Scenario: average_age -- @1.4.pop_size
    Given we run the model with average_age=24
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should increase

  @average_age__1_4_pop_infected
  Scenario: average_age -- @1.4.pop_infected
    Given we run the model with average_age=24
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 101   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should increase

  @average_age__1_4_symp_prob
  Scenario: average_age -- @1.4.symp_prob
    Given we run the model with average_age=24
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.25  |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should increase

  @average_age__1_4_asymp_prob
  Scenario: average_age -- @1.4.asymp_prob
    Given we run the model with average_age=24
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should increase

  @average_age__1_4_symp_quar_prob
  Scenario: average_age -- @1.4.symp_quar_prob
    Given we run the model with average_age=24
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.25  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should increase

  @average_age__1_4_asymp_quar_prob
  Scenario: average_age -- @1.4.asymp_quar_prob
    Given we run the model with average_age=24
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.25  |
    | trace_probs     | 0.5   |
    Then the cum_deaths should increase

  @average_age__1_4_trace_probs
  Scenario: average_age -- @1.4.trace_probs
    Given we run the model with average_age=24
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.25  |
    Then the cum_deaths should increase

  @quar_period__1_1_none
  Scenario: quar_period -- @1.1.None
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should remain the same

  @quar_period__1_1_n_days
  Scenario: quar_period -- @1.1.n_days
    Given we run the model with quar_period=5
    When we run the model with quar_period=14
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should remain the same

  @quar_period__1_1_pop_size
  Scenario: quar_period -- @1.1.pop_size
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should remain the same

  @quar_period__1_1_pop_infected
  Scenario: quar_period -- @1.1.pop_infected
    Given we run the model with quar_period=14
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 20000 |
    | pop_infected    | 101   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should remain the same

  @quar_period__1_1_symp_prob
  Scenario: quar_period -- @1.1.symp_prob
    Given we run the model with quar_period=14
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should remain the same

  @quar_period__1_1_asymp_prob
  Scenario: quar_period -- @1.1.asymp_prob
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should remain the same

  @quar_period__1_1_symp_quar_prob
  Scenario: quar_period -- @1.1.symp_quar_prob
    Given we run the model with quar_period=14
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should remain the same

  @quar_period__1_1_asymp_quar_prob
  Scenario: quar_period -- @1.1.asymp_quar_prob
    Given we run the model with quar_period=14
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.5   |
    Then the cum_tests should remain the same

  @quar_period__1_1_trace_probs
  Scenario: quar_period -- @1.1.trace_probs
    Given we run the model with quar_period=14
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.0   |
    Then the cum_tests should remain the same

  @quar_period__1_2_none
  Scenario: quar_period -- @1.2.None
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @quar_period__1_2_n_days
  Scenario: quar_period -- @1.2.n_days
    Given we run the model with quar_period=5
    When we run the model with quar_period=14
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @quar_period__1_2_pop_size
  Scenario: quar_period -- @1.2.pop_size
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @quar_period__1_2_pop_infected
  Scenario: quar_period -- @1.2.pop_infected
    Given we run the model with quar_period=14
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 20000 |
    | pop_infected    | 101   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @quar_period__1_2_symp_prob
  Scenario: quar_period -- @1.2.symp_prob
    Given we run the model with quar_period=14
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @quar_period__1_2_asymp_prob
  Scenario: quar_period -- @1.2.asymp_prob
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @quar_period__1_2_symp_quar_prob
  Scenario: quar_period -- @1.2.symp_quar_prob
    Given we run the model with quar_period=14
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @quar_period__1_2_asymp_quar_prob
  Scenario: quar_period -- @1.2.asymp_quar_prob
    Given we run the model with quar_period=14
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @quar_period__1_2_trace_probs
  Scenario: quar_period -- @1.2.trace_probs
    Given we run the model with quar_period=14
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.0   |
    Then the cum_quarantined should decrease

  @quar_period__1_3_none
  Scenario: quar_period -- @1.3.None
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @quar_period__1_3_n_days
  Scenario: quar_period -- @1.3.n_days
    Given we run the model with quar_period=5
    When we run the model with quar_period=14
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @quar_period__1_3_pop_size
  Scenario: quar_period -- @1.3.pop_size
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @quar_period__1_3_pop_infected
  Scenario: quar_period -- @1.3.pop_infected
    Given we run the model with quar_period=14
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 20000 |
    | pop_infected    | 101   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @quar_period__1_3_symp_prob
  Scenario: quar_period -- @1.3.symp_prob
    Given we run the model with quar_period=14
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @quar_period__1_3_asymp_prob
  Scenario: quar_period -- @1.3.asymp_prob
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @quar_period__1_3_symp_quar_prob
  Scenario: quar_period -- @1.3.symp_quar_prob
    Given we run the model with quar_period=14
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @quar_period__1_3_asymp_quar_prob
  Scenario: quar_period -- @1.3.asymp_quar_prob
    Given we run the model with quar_period=14
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @quar_period__1_3_trace_probs
  Scenario: quar_period -- @1.3.trace_probs
    Given we run the model with quar_period=14
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.0   |
    Then the cum_infections should decrease

  @quar_period__1_4_none
  Scenario: quar_period -- @1.4.None
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @quar_period__1_4_n_days
  Scenario: quar_period -- @1.4.n_days
    Given we run the model with quar_period=5
    When we run the model with quar_period=14
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @quar_period__1_4_pop_size
  Scenario: quar_period -- @1.4.pop_size
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @quar_period__1_4_pop_infected
  Scenario: quar_period -- @1.4.pop_infected
    Given we run the model with quar_period=14
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 20000 |
    | pop_infected    | 101   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @quar_period__1_4_symp_prob
  Scenario: quar_period -- @1.4.symp_prob
    Given we run the model with quar_period=14
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @quar_period__1_4_asymp_prob
  Scenario: quar_period -- @1.4.asymp_prob
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @quar_period__1_4_symp_quar_prob
  Scenario: quar_period -- @1.4.symp_quar_prob
    Given we run the model with quar_period=14
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @quar_period__1_4_asymp_quar_prob
  Scenario: quar_period -- @1.4.asymp_quar_prob
    Given we run the model with quar_period=14
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @quar_period__1_4_trace_probs
  Scenario: quar_period -- @1.4.trace_probs
    Given we run the model with quar_period=14
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.0   |
    Then the cum_deaths should remain the same

  @symp_prob_none
  Scenario: symp_prob.None
    Given we run the model with symp_prob=0.125
    When we run the model with symp_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should decrease

  @symp_prob_n_days
  Scenario: symp_prob.n_days
    Given we run the model with symp_prob=0.125
    When we run the model with symp_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should decrease

  @symp_prob_quar_period
  Scenario: symp_prob.quar_period
    Given we run the model with symp_prob=0.125
    When we run the model with symp_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should decrease

  @symp_prob_pop_size
  Scenario: symp_prob.pop_size
    Given we run the model with symp_prob=0.125
    When we run the model with symp_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should decrease

  @symp_prob_pop_infected
  Scenario: symp_prob.pop_infected
    Given we run the model with symp_prob=0.125
    When we run the model with symp_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 101   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should decrease

  @symp_prob_asymp_prob
  Scenario: symp_prob.asymp_prob
    Given we run the model with symp_prob=0.125
    When we run the model with symp_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should decrease

  @symp_prob_symp_quar_prob
  Scenario: symp_prob.symp_quar_prob
    Given we run the model with symp_prob=0.125
    When we run the model with symp_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.125 |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should decrease

  @symp_prob_asymp_quar_prob
  Scenario: symp_prob.asymp_quar_prob
    Given we run the model with symp_prob=0.125
    When we run the model with symp_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.125 |
    | trace_probs     | 0.5   |
    Then the cum_tests should decrease

  @symp_prob_trace_probs
  Scenario: symp_prob.trace_probs
    Given we run the model with symp_prob=0.125
    When we run the model with symp_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.125 |
    Then the cum_tests should decrease

  @symp_prob_none
  Scenario: symp_prob.None
    Given we run the model with symp_prob=0.125
    When we run the model with symp_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @symp_prob_n_days
  Scenario: symp_prob.n_days
    Given we run the model with symp_prob=0.125
    When we run the model with symp_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @symp_prob_quar_period
  Scenario: symp_prob.quar_period
    Given we run the model with symp_prob=0.125
    When we run the model with symp_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @symp_prob_pop_size
  Scenario: symp_prob.pop_size
    Given we run the model with symp_prob=0.125
    When we run the model with symp_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @symp_prob_pop_infected
  Scenario: symp_prob.pop_infected
    Given we run the model with symp_prob=0.125
    When we run the model with symp_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 101   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @symp_prob_asymp_prob
  Scenario: symp_prob.asymp_prob
    Given we run the model with symp_prob=0.125
    When we run the model with symp_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @symp_prob_symp_quar_prob
  Scenario: symp_prob.symp_quar_prob
    Given we run the model with symp_prob=0.125
    When we run the model with symp_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.125 |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @symp_prob_asymp_quar_prob
  Scenario: symp_prob.asymp_quar_prob
    Given we run the model with symp_prob=0.125
    When we run the model with symp_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.125 |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @symp_prob_trace_probs
  Scenario: symp_prob.trace_probs
    Given we run the model with symp_prob=0.125
    When we run the model with symp_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.125 |
    Then the cum_quarantined should decrease

  @symp_prob_none
  Scenario: symp_prob.None
    Given we run the model with symp_prob=0.125
    When we run the model with symp_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @symp_prob_n_days
  Scenario: symp_prob.n_days
    Given we run the model with symp_prob=0.125
    When we run the model with symp_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @symp_prob_quar_period
  Scenario: symp_prob.quar_period
    Given we run the model with symp_prob=0.125
    When we run the model with symp_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @symp_prob_pop_size
  Scenario: symp_prob.pop_size
    Given we run the model with symp_prob=0.125
    When we run the model with symp_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @symp_prob_pop_infected
  Scenario: symp_prob.pop_infected
    Given we run the model with symp_prob=0.125
    When we run the model with symp_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 101   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @symp_prob_asymp_prob
  Scenario: symp_prob.asymp_prob
    Given we run the model with symp_prob=0.125
    When we run the model with symp_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @symp_prob_symp_quar_prob
  Scenario: symp_prob.symp_quar_prob
    Given we run the model with symp_prob=0.125
    When we run the model with symp_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.125 |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @symp_prob_asymp_quar_prob
  Scenario: symp_prob.asymp_quar_prob
    Given we run the model with symp_prob=0.125
    When we run the model with symp_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.125 |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @symp_prob_trace_probs
  Scenario: symp_prob.trace_probs
    Given we run the model with symp_prob=0.125
    When we run the model with symp_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.125 |
    Then the cum_infections should decrease

  @symp_prob_none
  Scenario: symp_prob.None
    Given we run the model with symp_prob=0.125
    When we run the model with symp_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @symp_prob_n_days
  Scenario: symp_prob.n_days
    Given we run the model with symp_prob=0.125
    When we run the model with symp_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @symp_prob_quar_period
  Scenario: symp_prob.quar_period
    Given we run the model with symp_prob=0.125
    When we run the model with symp_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @symp_prob_pop_size
  Scenario: symp_prob.pop_size
    Given we run the model with symp_prob=0.125
    When we run the model with symp_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @symp_prob_pop_infected
  Scenario: symp_prob.pop_infected
    Given we run the model with symp_prob=0.125
    When we run the model with symp_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 101   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @symp_prob_asymp_prob
  Scenario: symp_prob.asymp_prob
    Given we run the model with symp_prob=0.125
    When we run the model with symp_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @symp_prob_symp_quar_prob
  Scenario: symp_prob.symp_quar_prob
    Given we run the model with symp_prob=0.125
    When we run the model with symp_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.125 |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @symp_prob_asymp_quar_prob
  Scenario: symp_prob.asymp_quar_prob
    Given we run the model with symp_prob=0.125
    When we run the model with symp_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.125 |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @symp_prob_trace_probs
  Scenario: symp_prob.trace_probs
    Given we run the model with symp_prob=0.125
    When we run the model with symp_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.125 |
    Then the cum_deaths should remain the same

  @asymp_prob_none
  Scenario: asymp_prob.None
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should increase

  @asymp_prob_n_days
  Scenario: asymp_prob.n_days
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should increase

  @asymp_prob_quar_period
  Scenario: asymp_prob.quar_period
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should increase

  @asymp_prob_pop_size
  Scenario: asymp_prob.pop_size
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should increase

  @asymp_prob_pop_infected
  Scenario: asymp_prob.pop_infected
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 101   |
    | symp_prob       | 0.5   |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should increase

  @asymp_prob_symp_prob
  Scenario: asymp_prob.symp_prob
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.0   |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should increase

  @asymp_prob_symp_quar_prob
  Scenario: asymp_prob.symp_quar_prob
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should increase

  @asymp_prob_asymp_quar_prob
  Scenario: asymp_prob.asymp_quar_prob
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.5   |
    Then the cum_tests should increase

  @asymp_prob_trace_probs
  Scenario: asymp_prob.trace_probs
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.04  |
    Then the cum_tests should increase

  @asymp_prob_none
  Scenario: asymp_prob.None
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @asymp_prob_n_days
  Scenario: asymp_prob.n_days
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @asymp_prob_quar_period
  Scenario: asymp_prob.quar_period
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @asymp_prob_pop_size
  Scenario: asymp_prob.pop_size
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @asymp_prob_pop_infected
  Scenario: asymp_prob.pop_infected
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 101   |
    | symp_prob       | 0.5   |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @asymp_prob_symp_prob
  Scenario: asymp_prob.symp_prob
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.0   |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @asymp_prob_symp_quar_prob
  Scenario: asymp_prob.symp_quar_prob
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @asymp_prob_asymp_quar_prob
  Scenario: asymp_prob.asymp_quar_prob
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @asymp_prob_trace_probs
  Scenario: asymp_prob.trace_probs
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.04  |
    Then the cum_quarantined should decrease

  @asymp_prob_none
  Scenario: asymp_prob.None
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @asymp_prob_n_days
  Scenario: asymp_prob.n_days
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @asymp_prob_quar_period
  Scenario: asymp_prob.quar_period
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @asymp_prob_pop_size
  Scenario: asymp_prob.pop_size
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @asymp_prob_pop_infected
  Scenario: asymp_prob.pop_infected
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 101   |
    | symp_prob       | 0.5   |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @asymp_prob_symp_prob
  Scenario: asymp_prob.symp_prob
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.0   |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @asymp_prob_symp_quar_prob
  Scenario: asymp_prob.symp_quar_prob
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @asymp_prob_asymp_quar_prob
  Scenario: asymp_prob.asymp_quar_prob
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @asymp_prob_trace_probs
  Scenario: asymp_prob.trace_probs
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.04  |
    Then the cum_infections should decrease

  @asymp_prob_none
  Scenario: asymp_prob.None
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @asymp_prob_n_days
  Scenario: asymp_prob.n_days
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @asymp_prob_quar_period
  Scenario: asymp_prob.quar_period
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @asymp_prob_pop_size
  Scenario: asymp_prob.pop_size
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @asymp_prob_pop_infected
  Scenario: asymp_prob.pop_infected
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 101   |
    | symp_prob       | 0.5   |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @asymp_prob_symp_prob
  Scenario: asymp_prob.symp_prob
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.0   |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @asymp_prob_symp_quar_prob
  Scenario: asymp_prob.symp_quar_prob
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @asymp_prob_asymp_quar_prob
  Scenario: asymp_prob.asymp_quar_prob
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @asymp_prob_trace_probs
  Scenario: asymp_prob.trace_probs
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.04  |
    Then the cum_deaths should remain the same

  @symp_quar_prob_none
  Scenario: symp_quar_prob.None
    Given we run the model with symp_quar_prob=0.0
    When we run the model with symp_quar_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should decrease

  @symp_quar_prob_n_days
  Scenario: symp_quar_prob.n_days
    Given we run the model with symp_quar_prob=0.0
    When we run the model with symp_quar_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should decrease

  @symp_quar_prob_quar_period
  Scenario: symp_quar_prob.quar_period
    Given we run the model with symp_quar_prob=0.0
    When we run the model with symp_quar_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should decrease

  @symp_quar_prob_pop_size
  Scenario: symp_quar_prob.pop_size
    Given we run the model with symp_quar_prob=0.0
    When we run the model with symp_quar_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should decrease

  @symp_quar_prob_pop_infected
  Scenario: symp_quar_prob.pop_infected
    Given we run the model with symp_quar_prob=0.0
    When we run the model with symp_quar_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 101   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should decrease

  @symp_quar_prob_symp_prob
  Scenario: symp_quar_prob.symp_prob
    Given we run the model with symp_quar_prob=0.0
    When we run the model with symp_quar_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should decrease

  @symp_quar_prob_asymp_prob
  Scenario: symp_quar_prob.asymp_prob
    Given we run the model with symp_quar_prob=0.0
    When we run the model with symp_quar_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.05  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should decrease

  @symp_quar_prob_asymp_quar_prob
  Scenario: symp_quar_prob.asymp_quar_prob
    Given we run the model with symp_quar_prob=0.0
    When we run the model with symp_quar_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.5   |
    Then the cum_tests should decrease

  @symp_quar_prob_trace_probs
  Scenario: symp_quar_prob.trace_probs
    Given we run the model with symp_quar_prob=0.0
    When we run the model with symp_quar_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.25  |
    Then the cum_tests should decrease

  @symp_quar_prob_none
  Scenario: symp_quar_prob.None
    Given we run the model with symp_quar_prob=0.0
    When we run the model with symp_quar_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @symp_quar_prob_n_days
  Scenario: symp_quar_prob.n_days
    Given we run the model with symp_quar_prob=0.0
    When we run the model with symp_quar_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @symp_quar_prob_quar_period
  Scenario: symp_quar_prob.quar_period
    Given we run the model with symp_quar_prob=0.0
    When we run the model with symp_quar_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @symp_quar_prob_pop_size
  Scenario: symp_quar_prob.pop_size
    Given we run the model with symp_quar_prob=0.0
    When we run the model with symp_quar_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @symp_quar_prob_pop_infected
  Scenario: symp_quar_prob.pop_infected
    Given we run the model with symp_quar_prob=0.0
    When we run the model with symp_quar_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 101   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @symp_quar_prob_symp_prob
  Scenario: symp_quar_prob.symp_prob
    Given we run the model with symp_quar_prob=0.0
    When we run the model with symp_quar_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @symp_quar_prob_asymp_prob
  Scenario: symp_quar_prob.asymp_prob
    Given we run the model with symp_quar_prob=0.0
    When we run the model with symp_quar_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.05  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @symp_quar_prob_asymp_quar_prob
  Scenario: symp_quar_prob.asymp_quar_prob
    Given we run the model with symp_quar_prob=0.0
    When we run the model with symp_quar_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @symp_quar_prob_trace_probs
  Scenario: symp_quar_prob.trace_probs
    Given we run the model with symp_quar_prob=0.0
    When we run the model with symp_quar_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.25  |
    Then the cum_quarantined should decrease

  @symp_quar_prob_none
  Scenario: symp_quar_prob.None
    Given we run the model with symp_quar_prob=0.0
    When we run the model with symp_quar_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @symp_quar_prob_n_days
  Scenario: symp_quar_prob.n_days
    Given we run the model with symp_quar_prob=0.0
    When we run the model with symp_quar_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @symp_quar_prob_quar_period
  Scenario: symp_quar_prob.quar_period
    Given we run the model with symp_quar_prob=0.0
    When we run the model with symp_quar_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @symp_quar_prob_pop_size
  Scenario: symp_quar_prob.pop_size
    Given we run the model with symp_quar_prob=0.0
    When we run the model with symp_quar_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @symp_quar_prob_pop_infected
  Scenario: symp_quar_prob.pop_infected
    Given we run the model with symp_quar_prob=0.0
    When we run the model with symp_quar_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 101   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @symp_quar_prob_symp_prob
  Scenario: symp_quar_prob.symp_prob
    Given we run the model with symp_quar_prob=0.0
    When we run the model with symp_quar_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @symp_quar_prob_asymp_prob
  Scenario: symp_quar_prob.asymp_prob
    Given we run the model with symp_quar_prob=0.0
    When we run the model with symp_quar_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.05  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @symp_quar_prob_asymp_quar_prob
  Scenario: symp_quar_prob.asymp_quar_prob
    Given we run the model with symp_quar_prob=0.0
    When we run the model with symp_quar_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @symp_quar_prob_trace_probs
  Scenario: symp_quar_prob.trace_probs
    Given we run the model with symp_quar_prob=0.0
    When we run the model with symp_quar_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.25  |
    Then the cum_infections should decrease

  @symp_quar_prob_none
  Scenario: symp_quar_prob.None
    Given we run the model with symp_quar_prob=0.0
    When we run the model with symp_quar_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @symp_quar_prob_n_days
  Scenario: symp_quar_prob.n_days
    Given we run the model with symp_quar_prob=0.0
    When we run the model with symp_quar_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @symp_quar_prob_quar_period
  Scenario: symp_quar_prob.quar_period
    Given we run the model with symp_quar_prob=0.0
    When we run the model with symp_quar_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @symp_quar_prob_pop_size
  Scenario: symp_quar_prob.pop_size
    Given we run the model with symp_quar_prob=0.0
    When we run the model with symp_quar_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @symp_quar_prob_pop_infected
  Scenario: symp_quar_prob.pop_infected
    Given we run the model with symp_quar_prob=0.0
    When we run the model with symp_quar_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 101   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @symp_quar_prob_symp_prob
  Scenario: symp_quar_prob.symp_prob
    Given we run the model with symp_quar_prob=0.0
    When we run the model with symp_quar_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @symp_quar_prob_asymp_prob
  Scenario: symp_quar_prob.asymp_prob
    Given we run the model with symp_quar_prob=0.0
    When we run the model with symp_quar_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.05  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @symp_quar_prob_asymp_quar_prob
  Scenario: symp_quar_prob.asymp_quar_prob
    Given we run the model with symp_quar_prob=0.0
    When we run the model with symp_quar_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @symp_quar_prob_trace_probs
  Scenario: symp_quar_prob.trace_probs
    Given we run the model with symp_quar_prob=0.0
    When we run the model with symp_quar_prob=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.25  |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_none
  Scenario: asymp_quar_prob.None
    Given we run the model with asymp_quar_prob=0.0
    When we run the model with asymp_quar_prob=0.25
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 5     |
    | pop_size       | 20000 |
    | pop_infected   | 100   |
    | symp_prob      | 0.5   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 0.5   |
    | trace_probs    | 0.5   |
    Then the cum_tests should increase

  @asymp_quar_prob_n_days
  Scenario: asymp_quar_prob.n_days
    Given we run the model with asymp_quar_prob=0.0
    When we run the model with asymp_quar_prob=0.25
    And effect modifier values
    | modifier       | value |
    | n_days         | 60    |
    | quar_period    | 5     |
    | pop_size       | 20000 |
    | pop_infected   | 100   |
    | symp_prob      | 0.5   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 0.5   |
    | trace_probs    | 0.5   |
    Then the cum_tests should increase

  @asymp_quar_prob_quar_period
  Scenario: asymp_quar_prob.quar_period
    Given we run the model with asymp_quar_prob=0.0
    When we run the model with asymp_quar_prob=0.25
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 14    |
    | pop_size       | 20000 |
    | pop_infected   | 100   |
    | symp_prob      | 0.5   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 0.5   |
    | trace_probs    | 0.5   |
    Then the cum_tests should increase

  @asymp_quar_prob_pop_size
  Scenario: asymp_quar_prob.pop_size
    Given we run the model with asymp_quar_prob=0.0
    When we run the model with asymp_quar_prob=0.25
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 5     |
    | pop_size       | 10000 |
    | pop_infected   | 100   |
    | symp_prob      | 0.5   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 0.5   |
    | trace_probs    | 0.5   |
    Then the cum_tests should increase

  @asymp_quar_prob_pop_infected
  Scenario: asymp_quar_prob.pop_infected
    Given we run the model with asymp_quar_prob=0.0
    When we run the model with asymp_quar_prob=0.25
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 5     |
    | pop_size       | 20000 |
    | pop_infected   | 101   |
    | symp_prob      | 0.5   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 0.5   |
    | trace_probs    | 0.5   |
    Then the cum_tests should increase

  @asymp_quar_prob_symp_prob
  Scenario: asymp_quar_prob.symp_prob
    Given we run the model with asymp_quar_prob=0.0
    When we run the model with asymp_quar_prob=0.25
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 5     |
    | pop_size       | 20000 |
    | pop_infected   | 100   |
    | symp_prob      | 0.0   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 0.5   |
    | trace_probs    | 0.5   |
    Then the cum_tests should increase

  @asymp_quar_prob_asymp_prob
  Scenario: asymp_quar_prob.asymp_prob
    Given we run the model with asymp_quar_prob=0.0
    When we run the model with asymp_quar_prob=0.25
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 5     |
    | pop_size       | 20000 |
    | pop_infected   | 100   |
    | symp_prob      | 0.5   |
    | asymp_prob     | 0.05  |
    | symp_quar_prob | 0.5   |
    | trace_probs    | 0.5   |
    Then the cum_tests should increase

  @asymp_quar_prob_symp_quar_prob
  Scenario: asymp_quar_prob.symp_quar_prob
    Given we run the model with asymp_quar_prob=0.0
    When we run the model with asymp_quar_prob=0.25
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 5     |
    | pop_size       | 20000 |
    | pop_infected   | 100   |
    | symp_prob      | 0.5   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 0.0   |
    | trace_probs    | 0.5   |
    Then the cum_tests should increase

  @asymp_quar_prob_trace_probs
  Scenario: asymp_quar_prob.trace_probs
    Given we run the model with asymp_quar_prob=0.0
    When we run the model with asymp_quar_prob=0.25
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 5     |
    | pop_size       | 20000 |
    | pop_infected   | 100   |
    | symp_prob      | 0.5   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 0.5   |
    | trace_probs    | 0.25  |
    Then the cum_tests should increase

  @asymp_quar_prob_none
  Scenario: asymp_quar_prob.None
    Given we run the model with asymp_quar_prob=0.0
    When we run the model with asymp_quar_prob=0.25
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 5     |
    | pop_size       | 20000 |
    | pop_infected   | 100   |
    | symp_prob      | 0.5   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 0.5   |
    | trace_probs    | 0.5   |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_n_days
  Scenario: asymp_quar_prob.n_days
    Given we run the model with asymp_quar_prob=0.0
    When we run the model with asymp_quar_prob=0.25
    And effect modifier values
    | modifier       | value |
    | n_days         | 60    |
    | quar_period    | 5     |
    | pop_size       | 20000 |
    | pop_infected   | 100   |
    | symp_prob      | 0.5   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 0.5   |
    | trace_probs    | 0.5   |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_quar_period
  Scenario: asymp_quar_prob.quar_period
    Given we run the model with asymp_quar_prob=0.0
    When we run the model with asymp_quar_prob=0.25
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 14    |
    | pop_size       | 20000 |
    | pop_infected   | 100   |
    | symp_prob      | 0.5   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 0.5   |
    | trace_probs    | 0.5   |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_pop_size
  Scenario: asymp_quar_prob.pop_size
    Given we run the model with asymp_quar_prob=0.0
    When we run the model with asymp_quar_prob=0.25
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 5     |
    | pop_size       | 10000 |
    | pop_infected   | 100   |
    | symp_prob      | 0.5   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 0.5   |
    | trace_probs    | 0.5   |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_pop_infected
  Scenario: asymp_quar_prob.pop_infected
    Given we run the model with asymp_quar_prob=0.0
    When we run the model with asymp_quar_prob=0.25
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 5     |
    | pop_size       | 20000 |
    | pop_infected   | 101   |
    | symp_prob      | 0.5   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 0.5   |
    | trace_probs    | 0.5   |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_symp_prob
  Scenario: asymp_quar_prob.symp_prob
    Given we run the model with asymp_quar_prob=0.0
    When we run the model with asymp_quar_prob=0.25
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 5     |
    | pop_size       | 20000 |
    | pop_infected   | 100   |
    | symp_prob      | 0.0   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 0.5   |
    | trace_probs    | 0.5   |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_asymp_prob
  Scenario: asymp_quar_prob.asymp_prob
    Given we run the model with asymp_quar_prob=0.0
    When we run the model with asymp_quar_prob=0.25
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 5     |
    | pop_size       | 20000 |
    | pop_infected   | 100   |
    | symp_prob      | 0.5   |
    | asymp_prob     | 0.05  |
    | symp_quar_prob | 0.5   |
    | trace_probs    | 0.5   |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_symp_quar_prob
  Scenario: asymp_quar_prob.symp_quar_prob
    Given we run the model with asymp_quar_prob=0.0
    When we run the model with asymp_quar_prob=0.25
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 5     |
    | pop_size       | 20000 |
    | pop_infected   | 100   |
    | symp_prob      | 0.5   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 0.0   |
    | trace_probs    | 0.5   |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_trace_probs
  Scenario: asymp_quar_prob.trace_probs
    Given we run the model with asymp_quar_prob=0.0
    When we run the model with asymp_quar_prob=0.25
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 5     |
    | pop_size       | 20000 |
    | pop_infected   | 100   |
    | symp_prob      | 0.5   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 0.5   |
    | trace_probs    | 0.25  |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_none
  Scenario: asymp_quar_prob.None
    Given we run the model with asymp_quar_prob=0.0
    When we run the model with asymp_quar_prob=0.25
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 5     |
    | pop_size       | 20000 |
    | pop_infected   | 100   |
    | symp_prob      | 0.5   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 0.5   |
    | trace_probs    | 0.5   |
    Then the cum_infections should decrease

  @asymp_quar_prob_n_days
  Scenario: asymp_quar_prob.n_days
    Given we run the model with asymp_quar_prob=0.0
    When we run the model with asymp_quar_prob=0.25
    And effect modifier values
    | modifier       | value |
    | n_days         | 60    |
    | quar_period    | 5     |
    | pop_size       | 20000 |
    | pop_infected   | 100   |
    | symp_prob      | 0.5   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 0.5   |
    | trace_probs    | 0.5   |
    Then the cum_infections should decrease

  @asymp_quar_prob_quar_period
  Scenario: asymp_quar_prob.quar_period
    Given we run the model with asymp_quar_prob=0.0
    When we run the model with asymp_quar_prob=0.25
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 14    |
    | pop_size       | 20000 |
    | pop_infected   | 100   |
    | symp_prob      | 0.5   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 0.5   |
    | trace_probs    | 0.5   |
    Then the cum_infections should decrease

  @asymp_quar_prob_pop_size
  Scenario: asymp_quar_prob.pop_size
    Given we run the model with asymp_quar_prob=0.0
    When we run the model with asymp_quar_prob=0.25
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 5     |
    | pop_size       | 10000 |
    | pop_infected   | 100   |
    | symp_prob      | 0.5   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 0.5   |
    | trace_probs    | 0.5   |
    Then the cum_infections should decrease

  @asymp_quar_prob_pop_infected
  Scenario: asymp_quar_prob.pop_infected
    Given we run the model with asymp_quar_prob=0.0
    When we run the model with asymp_quar_prob=0.25
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 5     |
    | pop_size       | 20000 |
    | pop_infected   | 101   |
    | symp_prob      | 0.5   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 0.5   |
    | trace_probs    | 0.5   |
    Then the cum_infections should decrease

  @asymp_quar_prob_symp_prob
  Scenario: asymp_quar_prob.symp_prob
    Given we run the model with asymp_quar_prob=0.0
    When we run the model with asymp_quar_prob=0.25
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 5     |
    | pop_size       | 20000 |
    | pop_infected   | 100   |
    | symp_prob      | 0.0   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 0.5   |
    | trace_probs    | 0.5   |
    Then the cum_infections should decrease

  @asymp_quar_prob_asymp_prob
  Scenario: asymp_quar_prob.asymp_prob
    Given we run the model with asymp_quar_prob=0.0
    When we run the model with asymp_quar_prob=0.25
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 5     |
    | pop_size       | 20000 |
    | pop_infected   | 100   |
    | symp_prob      | 0.5   |
    | asymp_prob     | 0.05  |
    | symp_quar_prob | 0.5   |
    | trace_probs    | 0.5   |
    Then the cum_infections should decrease

  @asymp_quar_prob_symp_quar_prob
  Scenario: asymp_quar_prob.symp_quar_prob
    Given we run the model with asymp_quar_prob=0.0
    When we run the model with asymp_quar_prob=0.25
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 5     |
    | pop_size       | 20000 |
    | pop_infected   | 100   |
    | symp_prob      | 0.5   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 0.0   |
    | trace_probs    | 0.5   |
    Then the cum_infections should decrease

  @asymp_quar_prob_trace_probs
  Scenario: asymp_quar_prob.trace_probs
    Given we run the model with asymp_quar_prob=0.0
    When we run the model with asymp_quar_prob=0.25
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 5     |
    | pop_size       | 20000 |
    | pop_infected   | 100   |
    | symp_prob      | 0.5   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 0.5   |
    | trace_probs    | 0.25  |
    Then the cum_infections should decrease

  @asymp_quar_prob_none
  Scenario: asymp_quar_prob.None
    Given we run the model with asymp_quar_prob=0.0
    When we run the model with asymp_quar_prob=0.25
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 5     |
    | pop_size       | 20000 |
    | pop_infected   | 100   |
    | symp_prob      | 0.5   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 0.5   |
    | trace_probs    | 0.5   |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_n_days
  Scenario: asymp_quar_prob.n_days
    Given we run the model with asymp_quar_prob=0.0
    When we run the model with asymp_quar_prob=0.25
    And effect modifier values
    | modifier       | value |
    | n_days         | 60    |
    | quar_period    | 5     |
    | pop_size       | 20000 |
    | pop_infected   | 100   |
    | symp_prob      | 0.5   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 0.5   |
    | trace_probs    | 0.5   |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_quar_period
  Scenario: asymp_quar_prob.quar_period
    Given we run the model with asymp_quar_prob=0.0
    When we run the model with asymp_quar_prob=0.25
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 14    |
    | pop_size       | 20000 |
    | pop_infected   | 100   |
    | symp_prob      | 0.5   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 0.5   |
    | trace_probs    | 0.5   |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_pop_size
  Scenario: asymp_quar_prob.pop_size
    Given we run the model with asymp_quar_prob=0.0
    When we run the model with asymp_quar_prob=0.25
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 5     |
    | pop_size       | 10000 |
    | pop_infected   | 100   |
    | symp_prob      | 0.5   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 0.5   |
    | trace_probs    | 0.5   |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_pop_infected
  Scenario: asymp_quar_prob.pop_infected
    Given we run the model with asymp_quar_prob=0.0
    When we run the model with asymp_quar_prob=0.25
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 5     |
    | pop_size       | 20000 |
    | pop_infected   | 101   |
    | symp_prob      | 0.5   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 0.5   |
    | trace_probs    | 0.5   |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_symp_prob
  Scenario: asymp_quar_prob.symp_prob
    Given we run the model with asymp_quar_prob=0.0
    When we run the model with asymp_quar_prob=0.25
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 5     |
    | pop_size       | 20000 |
    | pop_infected   | 100   |
    | symp_prob      | 0.0   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 0.5   |
    | trace_probs    | 0.5   |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_asymp_prob
  Scenario: asymp_quar_prob.asymp_prob
    Given we run the model with asymp_quar_prob=0.0
    When we run the model with asymp_quar_prob=0.25
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 5     |
    | pop_size       | 20000 |
    | pop_infected   | 100   |
    | symp_prob      | 0.5   |
    | asymp_prob     | 0.05  |
    | symp_quar_prob | 0.5   |
    | trace_probs    | 0.5   |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_symp_quar_prob
  Scenario: asymp_quar_prob.symp_quar_prob
    Given we run the model with asymp_quar_prob=0.0
    When we run the model with asymp_quar_prob=0.25
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 5     |
    | pop_size       | 20000 |
    | pop_infected   | 100   |
    | symp_prob      | 0.5   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 0.0   |
    | trace_probs    | 0.5   |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_trace_probs
  Scenario: asymp_quar_prob.trace_probs
    Given we run the model with asymp_quar_prob=0.0
    When we run the model with asymp_quar_prob=0.25
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 5     |
    | pop_size       | 20000 |
    | pop_infected   | 100   |
    | symp_prob      | 0.5   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 0.5   |
    | trace_probs    | 0.25  |
    Then the cum_deaths should remain the same

  @trace_probs_none
  Scenario: trace_probs.None
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    Then the cum_tests should decrease

  @trace_probs_n_days
  Scenario: trace_probs.n_days
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    Then the cum_tests should decrease

  @trace_probs_quar_period
  Scenario: trace_probs.quar_period
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    Then the cum_tests should decrease

  @trace_probs_pop_size
  Scenario: trace_probs.pop_size
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    Then the cum_tests should decrease

  @trace_probs_pop_infected
  Scenario: trace_probs.pop_infected
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 101   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    Then the cum_tests should decrease

  @trace_probs_symp_prob
  Scenario: trace_probs.symp_prob
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    Then the cum_tests should decrease

  @trace_probs_asymp_prob
  Scenario: trace_probs.asymp_prob
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    Then the cum_tests should decrease

  @trace_probs_symp_quar_prob
  Scenario: trace_probs.symp_quar_prob
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.5   |
    Then the cum_tests should decrease

  @trace_probs_asymp_quar_prob
  Scenario: trace_probs.asymp_quar_prob
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.0   |
    Then the cum_tests should decrease

  @trace_probs_none
  Scenario: trace_probs.None
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    Then the cum_quarantined should decrease

  @trace_probs_n_days
  Scenario: trace_probs.n_days
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    Then the cum_quarantined should decrease

  @trace_probs_quar_period
  Scenario: trace_probs.quar_period
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    Then the cum_quarantined should decrease

  @trace_probs_pop_size
  Scenario: trace_probs.pop_size
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    Then the cum_quarantined should decrease

  @trace_probs_pop_infected
  Scenario: trace_probs.pop_infected
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 101   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    Then the cum_quarantined should decrease

  @trace_probs_symp_prob
  Scenario: trace_probs.symp_prob
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    Then the cum_quarantined should decrease

  @trace_probs_asymp_prob
  Scenario: trace_probs.asymp_prob
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    Then the cum_quarantined should decrease

  @trace_probs_symp_quar_prob
  Scenario: trace_probs.symp_quar_prob
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.5   |
    Then the cum_quarantined should decrease

  @trace_probs_asymp_quar_prob
  Scenario: trace_probs.asymp_quar_prob
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.0   |
    Then the cum_quarantined should decrease

  @trace_probs_none
  Scenario: trace_probs.None
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    Then the cum_infections should decrease

  @trace_probs_n_days
  Scenario: trace_probs.n_days
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    Then the cum_infections should decrease

  @trace_probs_quar_period
  Scenario: trace_probs.quar_period
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    Then the cum_infections should decrease

  @trace_probs_pop_size
  Scenario: trace_probs.pop_size
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    Then the cum_infections should decrease

  @trace_probs_pop_infected
  Scenario: trace_probs.pop_infected
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 101   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    Then the cum_infections should decrease

  @trace_probs_symp_prob
  Scenario: trace_probs.symp_prob
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    Then the cum_infections should decrease

  @trace_probs_asymp_prob
  Scenario: trace_probs.asymp_prob
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    Then the cum_infections should decrease

  @trace_probs_symp_quar_prob
  Scenario: trace_probs.symp_quar_prob
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.5   |
    Then the cum_infections should decrease

  @trace_probs_asymp_quar_prob
  Scenario: trace_probs.asymp_quar_prob
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.0   |
    Then the cum_infections should decrease

  @trace_probs_none
  Scenario: trace_probs.None
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    Then the cum_deaths should remain the same

  @trace_probs_n_days
  Scenario: trace_probs.n_days
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    Then the cum_deaths should remain the same

  @trace_probs_quar_period
  Scenario: trace_probs.quar_period
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    Then the cum_deaths should remain the same

  @trace_probs_pop_size
  Scenario: trace_probs.pop_size
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    Then the cum_deaths should remain the same

  @trace_probs_pop_infected
  Scenario: trace_probs.pop_infected
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 101   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    Then the cum_deaths should remain the same

  @trace_probs_symp_prob
  Scenario: trace_probs.symp_prob
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    Then the cum_deaths should remain the same

  @trace_probs_asymp_prob
  Scenario: trace_probs.asymp_prob
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    Then the cum_deaths should remain the same

  @trace_probs_symp_quar_prob
  Scenario: trace_probs.symp_quar_prob
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.5   |
    Then the cum_deaths should remain the same

  @trace_probs_asymp_quar_prob
  Scenario: trace_probs.asymp_quar_prob
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.25
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.0   |
    Then the cum_deaths should remain the same

  @n_days__1_1_none
  Scenario: n_days -- @1.1.None
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should increase

  @n_days__1_1_quar_period
  Scenario: n_days -- @1.1.quar_period
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 14    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should increase

  @n_days__1_1_pop_size
  Scenario: n_days -- @1.1.pop_size
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 5     |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should increase

  @n_days__1_1_pop_infected
  Scenario: n_days -- @1.1.pop_infected
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 101   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should increase

  @n_days__1_1_symp_prob
  Scenario: n_days -- @1.1.symp_prob
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should increase

  @n_days__1_1_asymp_prob
  Scenario: n_days -- @1.1.asymp_prob
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should increase

  @n_days__1_1_symp_quar_prob
  Scenario: n_days -- @1.1.symp_quar_prob
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should increase

  @n_days__1_1_asymp_quar_prob
  Scenario: n_days -- @1.1.asymp_quar_prob
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.5   |
    Then the cum_tests should increase

  @n_days__1_1_trace_probs
  Scenario: n_days -- @1.1.trace_probs
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.0   |
    Then the cum_tests should increase

  @n_days__1_2_none
  Scenario: n_days -- @1.2.None
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should increase

  @n_days__1_2_quar_period
  Scenario: n_days -- @1.2.quar_period
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 14    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should increase

  @n_days__1_2_pop_size
  Scenario: n_days -- @1.2.pop_size
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 5     |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should increase

  @n_days__1_2_pop_infected
  Scenario: n_days -- @1.2.pop_infected
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 101   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should increase

  @n_days__1_2_symp_prob
  Scenario: n_days -- @1.2.symp_prob
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should increase

  @n_days__1_2_asymp_prob
  Scenario: n_days -- @1.2.asymp_prob
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should increase

  @n_days__1_2_symp_quar_prob
  Scenario: n_days -- @1.2.symp_quar_prob
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should increase

  @n_days__1_2_asymp_quar_prob
  Scenario: n_days -- @1.2.asymp_quar_prob
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should increase

  @n_days__1_2_trace_probs
  Scenario: n_days -- @1.2.trace_probs
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.0   |
    Then the cum_quarantined should increase

  @n_days__1_3_none
  Scenario: n_days -- @1.3.None
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should increase

  @n_days__1_3_quar_period
  Scenario: n_days -- @1.3.quar_period
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 14    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should increase

  @n_days__1_3_pop_size
  Scenario: n_days -- @1.3.pop_size
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 5     |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should increase

  @n_days__1_3_pop_infected
  Scenario: n_days -- @1.3.pop_infected
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 101   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should increase

  @n_days__1_3_symp_prob
  Scenario: n_days -- @1.3.symp_prob
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should increase

  @n_days__1_3_asymp_prob
  Scenario: n_days -- @1.3.asymp_prob
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should increase

  @n_days__1_3_symp_quar_prob
  Scenario: n_days -- @1.3.symp_quar_prob
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should increase

  @n_days__1_3_asymp_quar_prob
  Scenario: n_days -- @1.3.asymp_quar_prob
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.5   |
    Then the cum_infections should increase

  @n_days__1_3_trace_probs
  Scenario: n_days -- @1.3.trace_probs
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.0   |
    Then the cum_infections should increase

  @n_days__1_4_none
  Scenario: n_days -- @1.4.None
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should increase

  @n_days__1_4_quar_period
  Scenario: n_days -- @1.4.quar_period
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 14    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should increase

  @n_days__1_4_pop_size
  Scenario: n_days -- @1.4.pop_size
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 5     |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should increase

  @n_days__1_4_pop_infected
  Scenario: n_days -- @1.4.pop_infected
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 101   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should increase

  @n_days__1_4_symp_prob
  Scenario: n_days -- @1.4.symp_prob
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should increase

  @n_days__1_4_asymp_prob
  Scenario: n_days -- @1.4.asymp_prob
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should increase

  @n_days__1_4_symp_quar_prob
  Scenario: n_days -- @1.4.symp_quar_prob
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should increase

  @n_days__1_4_asymp_quar_prob
  Scenario: n_days -- @1.4.asymp_quar_prob
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should increase

  @n_days__1_4_trace_probs
  Scenario: n_days -- @1.4.trace_probs
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.0   |
    Then the cum_deaths should increase

  @pop_size__1_1_none
  Scenario: pop_size -- @1.1.None
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should increase

  @pop_size__1_1_n_days
  Scenario: pop_size -- @1.1.n_days
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 5     |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should increase

  @pop_size__1_1_quar_period
  Scenario: pop_size -- @1.1.quar_period
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should increase

  @pop_size__1_1_pop_infected
  Scenario: pop_size -- @1.1.pop_infected
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_infected    | 101   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should increase

  @pop_size__1_1_symp_prob
  Scenario: pop_size -- @1.1.symp_prob
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_infected    | 100   |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should increase

  @pop_size__1_1_asymp_prob
  Scenario: pop_size -- @1.1.asymp_prob
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should increase

  @pop_size__1_1_symp_quar_prob
  Scenario: pop_size -- @1.1.symp_quar_prob
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should increase

  @pop_size__1_1_asymp_quar_prob
  Scenario: pop_size -- @1.1.asymp_quar_prob
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.5   |
    Then the cum_tests should increase

  @pop_size__1_1_trace_probs
  Scenario: pop_size -- @1.1.trace_probs
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.0   |
    Then the cum_tests should increase

  @pop_size__1_2_none
  Scenario: pop_size -- @1.2.None
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should increase

  @pop_size__1_2_n_days
  Scenario: pop_size -- @1.2.n_days
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 5     |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should increase

  @pop_size__1_2_quar_period
  Scenario: pop_size -- @1.2.quar_period
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should increase

  @pop_size__1_2_pop_infected
  Scenario: pop_size -- @1.2.pop_infected
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_infected    | 101   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should increase

  @pop_size__1_2_symp_prob
  Scenario: pop_size -- @1.2.symp_prob
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_infected    | 100   |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should increase

  @pop_size__1_2_asymp_prob
  Scenario: pop_size -- @1.2.asymp_prob
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should increase

  @pop_size__1_2_symp_quar_prob
  Scenario: pop_size -- @1.2.symp_quar_prob
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should increase

  @pop_size__1_2_asymp_quar_prob
  Scenario: pop_size -- @1.2.asymp_quar_prob
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should increase

  @pop_size__1_2_trace_probs
  Scenario: pop_size -- @1.2.trace_probs
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.0   |
    Then the cum_quarantined should increase

  @pop_size__1_3_none
  Scenario: pop_size -- @1.3.None
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should increase

  @pop_size__1_3_n_days
  Scenario: pop_size -- @1.3.n_days
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 5     |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should increase

  @pop_size__1_3_quar_period
  Scenario: pop_size -- @1.3.quar_period
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should increase

  @pop_size__1_3_pop_infected
  Scenario: pop_size -- @1.3.pop_infected
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_infected    | 101   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should increase

  @pop_size__1_3_symp_prob
  Scenario: pop_size -- @1.3.symp_prob
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_infected    | 100   |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should increase

  @pop_size__1_3_asymp_prob
  Scenario: pop_size -- @1.3.asymp_prob
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should increase

  @pop_size__1_3_symp_quar_prob
  Scenario: pop_size -- @1.3.symp_quar_prob
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should increase

  @pop_size__1_3_asymp_quar_prob
  Scenario: pop_size -- @1.3.asymp_quar_prob
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.5   |
    Then the cum_infections should increase

  @pop_size__1_3_trace_probs
  Scenario: pop_size -- @1.3.trace_probs
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.0   |
    Then the cum_infections should increase

  @pop_size__1_4_none
  Scenario: pop_size -- @1.4.None
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should increase

  @pop_size__1_4_n_days
  Scenario: pop_size -- @1.4.n_days
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 5     |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should increase

  @pop_size__1_4_quar_period
  Scenario: pop_size -- @1.4.quar_period
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should increase

  @pop_size__1_4_pop_infected
  Scenario: pop_size -- @1.4.pop_infected
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_infected    | 101   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should increase

  @pop_size__1_4_symp_prob
  Scenario: pop_size -- @1.4.symp_prob
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_infected    | 100   |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should increase

  @pop_size__1_4_asymp_prob
  Scenario: pop_size -- @1.4.asymp_prob
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should increase

  @pop_size__1_4_symp_quar_prob
  Scenario: pop_size -- @1.4.symp_quar_prob
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should increase

  @pop_size__1_4_asymp_quar_prob
  Scenario: pop_size -- @1.4.asymp_quar_prob
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should increase

  @pop_size__1_4_trace_probs
  Scenario: pop_size -- @1.4.trace_probs
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.0   |
    Then the cum_deaths should increase

  @pop_infected__1_1_none
  Scenario: pop_infected -- @1.1.None
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should increase

  @pop_infected__1_1_n_days
  Scenario: pop_infected -- @1.1.n_days
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should increase

  @pop_infected__1_1_quar_period
  Scenario: pop_infected -- @1.1.quar_period
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_size        | 20000 |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should increase

  @pop_infected__1_1_pop_size
  Scenario: pop_infected -- @1.1.pop_size
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 10000 |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should increase

  @pop_infected__1_1_symp_prob
  Scenario: pop_infected -- @1.1.symp_prob
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should increase

  @pop_infected__1_1_asymp_prob
  Scenario: pop_infected -- @1.1.asymp_prob
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should increase

  @pop_infected__1_1_symp_quar_prob
  Scenario: pop_infected -- @1.1.symp_quar_prob
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should increase

  @pop_infected__1_1_asymp_quar_prob
  Scenario: pop_infected -- @1.1.asymp_quar_prob
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.5   |
    Then the cum_tests should increase

  @pop_infected__1_1_trace_probs
  Scenario: pop_infected -- @1.1.trace_probs
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.0   |
    Then the cum_tests should increase

  @pop_infected__1_2_none
  Scenario: pop_infected -- @1.2.None
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should increase

  @pop_infected__1_2_n_days
  Scenario: pop_infected -- @1.2.n_days
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should increase

  @pop_infected__1_2_quar_period
  Scenario: pop_infected -- @1.2.quar_period
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_size        | 20000 |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should increase

  @pop_infected__1_2_pop_size
  Scenario: pop_infected -- @1.2.pop_size
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 10000 |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should increase

  @pop_infected__1_2_symp_prob
  Scenario: pop_infected -- @1.2.symp_prob
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should increase

  @pop_infected__1_2_asymp_prob
  Scenario: pop_infected -- @1.2.asymp_prob
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should increase

  @pop_infected__1_2_symp_quar_prob
  Scenario: pop_infected -- @1.2.symp_quar_prob
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should increase

  @pop_infected__1_2_asymp_quar_prob
  Scenario: pop_infected -- @1.2.asymp_quar_prob
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should increase

  @pop_infected__1_2_trace_probs
  Scenario: pop_infected -- @1.2.trace_probs
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.0   |
    Then the cum_quarantined should increase

  @pop_infected__1_3_none
  Scenario: pop_infected -- @1.3.None
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should increase

  @pop_infected__1_3_n_days
  Scenario: pop_infected -- @1.3.n_days
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should increase

  @pop_infected__1_3_quar_period
  Scenario: pop_infected -- @1.3.quar_period
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_size        | 20000 |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should increase

  @pop_infected__1_3_pop_size
  Scenario: pop_infected -- @1.3.pop_size
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 10000 |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should increase

  @pop_infected__1_3_symp_prob
  Scenario: pop_infected -- @1.3.symp_prob
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should increase

  @pop_infected__1_3_asymp_prob
  Scenario: pop_infected -- @1.3.asymp_prob
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should increase

  @pop_infected__1_3_symp_quar_prob
  Scenario: pop_infected -- @1.3.symp_quar_prob
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should increase

  @pop_infected__1_3_asymp_quar_prob
  Scenario: pop_infected -- @1.3.asymp_quar_prob
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.5   |
    Then the cum_infections should increase

  @pop_infected__1_3_trace_probs
  Scenario: pop_infected -- @1.3.trace_probs
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.0   |
    Then the cum_infections should increase

  @pop_infected__1_4_none
  Scenario: pop_infected -- @1.4.None
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_n_days
  Scenario: pop_infected -- @1.4.n_days
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_quar_period
  Scenario: pop_infected -- @1.4.quar_period
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_size        | 20000 |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_pop_size
  Scenario: pop_infected -- @1.4.pop_size
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 10000 |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_symp_prob
  Scenario: pop_infected -- @1.4.symp_prob
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_asymp_prob
  Scenario: pop_infected -- @1.4.asymp_prob
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_symp_quar_prob
  Scenario: pop_infected -- @1.4.symp_quar_prob
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_asymp_quar_prob
  Scenario: pop_infected -- @1.4.asymp_quar_prob
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_trace_probs
  Scenario: pop_infected -- @1.4.trace_probs
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 20000 |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.0   |
    Then the cum_deaths should remain the same
