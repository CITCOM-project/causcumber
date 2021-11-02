Feature: Compare interventions basic concrete
  Background:
    Given a simulation with parameters
    | parameter       | type  | value |
    | asymp_prob      | float | 0.01  |
    | asymp_quar_prob | float | 0.5   |
    | average_age     | int   | 20    |
    | location        | str   | Niger |
    | n_days          | int   | 120   |
    | pop_infected    | int   | 100   |
    | pop_size        | int   | 10000 |
    | quar_period     | int   | 20    |
    | symp_prob       | float | 1.0   |
    | symp_quar_prob  | float | 1.0   |
    | trace_probs     | float | 1.0   |
    And the following variables are recorded at the end of the simulation
    | variable        | type |
    | cum_deaths      | int  |
    | cum_infections  | int  |
    | cum_quarantined | int  |
    | cum_tests       | int  |

  @average_age__1_1_none
  @average_age
  Scenario: average_age -- @1.1.None
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should decrease

  @average_age__1_1_n_days
  @average_age
  Scenario: average_age -- @1.1.n_days
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should decrease

  @average_age__1_1_quar_period
  @average_age
  Scenario: average_age -- @1.1.quar_period
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should decrease

  @average_age__1_1_pop_size
  @average_age
  Scenario: average_age -- @1.1.pop_size
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should decrease

  @average_age__1_1_pop_infected
  @average_age
  Scenario: average_age -- @1.1.pop_infected
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 101   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should decrease

  @average_age__1_1_symp_prob
  @average_age
  Scenario: average_age -- @1.1.symp_prob
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should decrease

  @average_age__1_1_asymp_prob
  @average_age
  Scenario: average_age -- @1.1.asymp_prob
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should decrease

  @average_age__1_1_symp_quar_prob
  @average_age
  Scenario: average_age -- @1.1.symp_quar_prob
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should decrease

  @average_age__1_1_asymp_quar_prob
  @average_age
  Scenario: average_age -- @1.1.asymp_quar_prob
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 1.0   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should decrease

  @average_age__1_1_trace_probs
  @average_age
  Scenario: average_age -- @1.1.trace_probs
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @average_age__1_2_none
  @average_age
  Scenario: average_age -- @1.2.None
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @average_age__1_2_n_days
  @average_age
  Scenario: average_age -- @1.2.n_days
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @average_age__1_2_quar_period
  @average_age
  Scenario: average_age -- @1.2.quar_period
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @average_age__1_2_pop_size
  @average_age
  Scenario: average_age -- @1.2.pop_size
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @average_age__1_2_pop_infected
  @average_age
  Scenario: average_age -- @1.2.pop_infected
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 101   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @average_age__1_2_symp_prob
  @average_age
  Scenario: average_age -- @1.2.symp_prob
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @average_age__1_2_asymp_prob
  @average_age
  Scenario: average_age -- @1.2.asymp_prob
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @average_age__1_2_symp_quar_prob
  @average_age
  Scenario: average_age -- @1.2.symp_quar_prob
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @average_age__1_2_asymp_quar_prob
  @average_age
  Scenario: average_age -- @1.2.asymp_quar_prob
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 1.0   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @average_age__1_2_trace_probs
  @average_age
  Scenario: average_age -- @1.2.trace_probs
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @average_age__1_3_none
  @average_age
  Scenario: average_age -- @1.3.None
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should increase

  @average_age__1_3_n_days
  @average_age
  Scenario: average_age -- @1.3.n_days
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should increase

  @average_age__1_3_quar_period
  @average_age
  Scenario: average_age -- @1.3.quar_period
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should increase

  @average_age__1_3_pop_size
  @average_age
  Scenario: average_age -- @1.3.pop_size
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should increase

  @average_age__1_3_pop_infected
  @average_age
  Scenario: average_age -- @1.3.pop_infected
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 101   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should increase

  @average_age__1_3_symp_prob
  @average_age
  Scenario: average_age -- @1.3.symp_prob
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should increase

  @average_age__1_3_asymp_prob
  @average_age
  Scenario: average_age -- @1.3.asymp_prob
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should increase

  @average_age__1_3_symp_quar_prob
  @average_age
  Scenario: average_age -- @1.3.symp_quar_prob
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should increase

  @average_age__1_3_asymp_quar_prob
  @average_age
  Scenario: average_age -- @1.3.asymp_quar_prob
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 1.0   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should increase

  @average_age__1_3_trace_probs
  @average_age
  Scenario: average_age -- @1.3.trace_probs
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should increase

  @quar_period__1_1_none
  @quar_period_short
  Scenario: quar_period -- @1.1.None
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should remain the same

  @quar_period__1_1_n_days
  @quar_period_short
  Scenario: quar_period -- @1.1.n_days
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should remain the same

  @quar_period__1_1_pop_size
  @quar_period_short
  Scenario: quar_period -- @1.1.pop_size
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should remain the same

  @quar_period__1_1_pop_infected
  @quar_period_short
  Scenario: quar_period -- @1.1.pop_infected
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 10000 |
    | pop_infected    | 101   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should remain the same

  @quar_period__1_1_symp_prob
  @quar_period_short
  Scenario: quar_period -- @1.1.symp_prob
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should remain the same

  @quar_period__1_1_asymp_prob
  @quar_period_short
  Scenario: quar_period -- @1.1.asymp_prob
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should remain the same

  @quar_period__1_1_symp_quar_prob
  @quar_period_short
  Scenario: quar_period -- @1.1.symp_quar_prob
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should remain the same

  @quar_period__1_1_asymp_quar_prob
  @quar_period_short
  Scenario: quar_period -- @1.1.asymp_quar_prob
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 1.0   |
    | trace_probs     | 1.0   |
    Then the cum_tests should remain the same

  @quar_period__1_1_trace_probs
  @quar_period_short
  Scenario: quar_period -- @1.1.trace_probs
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should remain the same

  @quar_period__1_2_none
  @quar_period_short
  Scenario: quar_period -- @1.2.None
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should decrease

  @quar_period__1_2_n_days
  @quar_period_short
  Scenario: quar_period -- @1.2.n_days
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should decrease

  @quar_period__1_2_pop_size
  @quar_period_short
  Scenario: quar_period -- @1.2.pop_size
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should decrease

  @quar_period__1_2_pop_infected
  @quar_period_short
  Scenario: quar_period -- @1.2.pop_infected
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 10000 |
    | pop_infected    | 101   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should decrease

  @quar_period__1_2_symp_prob
  @quar_period_short
  Scenario: quar_period -- @1.2.symp_prob
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should decrease

  @quar_period__1_2_asymp_prob
  @quar_period_short
  Scenario: quar_period -- @1.2.asymp_prob
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should decrease

  @quar_period__1_2_symp_quar_prob
  @quar_period_short
  Scenario: quar_period -- @1.2.symp_quar_prob
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should decrease

  @quar_period__1_2_asymp_quar_prob
  @quar_period_short
  Scenario: quar_period -- @1.2.asymp_quar_prob
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 1.0   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should decrease

  @quar_period__1_2_trace_probs
  @quar_period_short
  Scenario: quar_period -- @1.2.trace_probs
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @quar_period__1_3_none
  @quar_period_short
  Scenario: quar_period -- @1.3.None
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @quar_period__1_3_n_days
  @quar_period_short
  Scenario: quar_period -- @1.3.n_days
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @quar_period__1_3_pop_size
  @quar_period_short
  Scenario: quar_period -- @1.3.pop_size
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @quar_period__1_3_pop_infected
  @quar_period_short
  Scenario: quar_period -- @1.3.pop_infected
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 10000 |
    | pop_infected    | 101   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @quar_period__1_3_symp_prob
  @quar_period_short
  Scenario: quar_period -- @1.3.symp_prob
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @quar_period__1_3_asymp_prob
  @quar_period_short
  Scenario: quar_period -- @1.3.asymp_prob
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @quar_period__1_3_symp_quar_prob
  @quar_period_short
  Scenario: quar_period -- @1.3.symp_quar_prob
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @quar_period__1_3_asymp_quar_prob
  @quar_period_short
  Scenario: quar_period -- @1.3.asymp_quar_prob
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 1.0   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @quar_period__1_3_trace_probs
  @quar_period_short
  Scenario: quar_period -- @1.3.trace_probs
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @quar_period__1_4_none
  @quar_period_short
  Scenario: quar_period -- @1.4.None
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should remain the same

  @quar_period__1_4_n_days
  @quar_period_short
  Scenario: quar_period -- @1.4.n_days
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should remain the same

  @quar_period__1_4_pop_size
  @quar_period_short
  Scenario: quar_period -- @1.4.pop_size
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should remain the same

  @quar_period__1_4_pop_infected
  @quar_period_short
  Scenario: quar_period -- @1.4.pop_infected
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 10000 |
    | pop_infected    | 101   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should remain the same

  @quar_period__1_4_symp_prob
  @quar_period_short
  Scenario: quar_period -- @1.4.symp_prob
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should remain the same

  @quar_period__1_4_asymp_prob
  @quar_period_short
  Scenario: quar_period -- @1.4.asymp_prob
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should remain the same

  @quar_period__1_4_symp_quar_prob
  @quar_period_short
  Scenario: quar_period -- @1.4.symp_quar_prob
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should remain the same

  @quar_period__1_4_asymp_quar_prob
  @quar_period_short
  Scenario: quar_period -- @1.4.asymp_quar_prob
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 1.0   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should remain the same

  @quar_period__1_4_trace_probs
  @quar_period_short
  Scenario: quar_period -- @1.4.trace_probs
    Given we run the model with quar_period=5
    When we run the model with quar_period=20
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @symp_prob_none
  @symp_prob
  Scenario: symp_prob.None
    Given we run the model with symp_prob=0.5
    When we run the model with symp_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should decrease

  @symp_prob_n_days
  @symp_prob
  Scenario: symp_prob.n_days
    Given we run the model with symp_prob=0.5
    When we run the model with symp_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should decrease

  @symp_prob_quar_period
  @symp_prob
  Scenario: symp_prob.quar_period
    Given we run the model with symp_prob=0.5
    When we run the model with symp_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should decrease

  @symp_prob_pop_size
  @symp_prob
  Scenario: symp_prob.pop_size
    Given we run the model with symp_prob=0.5
    When we run the model with symp_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should decrease

  @symp_prob_pop_infected
  @symp_prob
  Scenario: symp_prob.pop_infected
    Given we run the model with symp_prob=0.5
    When we run the model with symp_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 101   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should decrease

  @symp_prob_asymp_prob
  @symp_prob
  Scenario: symp_prob.asymp_prob
    Given we run the model with symp_prob=0.5
    When we run the model with symp_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should decrease

  @symp_prob_symp_quar_prob
  @symp_prob
  Scenario: symp_prob.symp_quar_prob
    Given we run the model with symp_prob=0.5
    When we run the model with symp_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should decrease

  @symp_prob_asymp_quar_prob
  @symp_prob
  Scenario: symp_prob.asymp_quar_prob
    Given we run the model with symp_prob=0.5
    When we run the model with symp_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 1.0   |
    | trace_probs     | 1.0   |
    Then the cum_tests should decrease

  @symp_prob_trace_probs
  @symp_prob
  Scenario: symp_prob.trace_probs
    Given we run the model with symp_prob=0.5
    When we run the model with symp_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should decrease

  @symp_prob_none
  @symp_prob
  Scenario: symp_prob.None
    Given we run the model with symp_prob=0.5
    When we run the model with symp_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should decrease

  @symp_prob_n_days
  @symp_prob
  Scenario: symp_prob.n_days
    Given we run the model with symp_prob=0.5
    When we run the model with symp_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should decrease

  @symp_prob_quar_period
  @symp_prob
  Scenario: symp_prob.quar_period
    Given we run the model with symp_prob=0.5
    When we run the model with symp_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should decrease

  @symp_prob_pop_size
  @symp_prob
  Scenario: symp_prob.pop_size
    Given we run the model with symp_prob=0.5
    When we run the model with symp_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should decrease

  @symp_prob_pop_infected
  @symp_prob
  Scenario: symp_prob.pop_infected
    Given we run the model with symp_prob=0.5
    When we run the model with symp_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 101   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should decrease

  @symp_prob_asymp_prob
  @symp_prob
  Scenario: symp_prob.asymp_prob
    Given we run the model with symp_prob=0.5
    When we run the model with symp_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should decrease

  @symp_prob_symp_quar_prob
  @symp_prob
  Scenario: symp_prob.symp_quar_prob
    Given we run the model with symp_prob=0.5
    When we run the model with symp_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should decrease

  @symp_prob_asymp_quar_prob
  @symp_prob
  Scenario: symp_prob.asymp_quar_prob
    Given we run the model with symp_prob=0.5
    When we run the model with symp_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 1.0   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should decrease

  @symp_prob_trace_probs
  @symp_prob
  Scenario: symp_prob.trace_probs
    Given we run the model with symp_prob=0.5
    When we run the model with symp_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @symp_prob_none
  @symp_prob
  Scenario: symp_prob.None
    Given we run the model with symp_prob=0.5
    When we run the model with symp_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @symp_prob_n_days
  @symp_prob
  Scenario: symp_prob.n_days
    Given we run the model with symp_prob=0.5
    When we run the model with symp_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @symp_prob_quar_period
  @symp_prob
  Scenario: symp_prob.quar_period
    Given we run the model with symp_prob=0.5
    When we run the model with symp_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @symp_prob_pop_size
  @symp_prob
  Scenario: symp_prob.pop_size
    Given we run the model with symp_prob=0.5
    When we run the model with symp_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @symp_prob_pop_infected
  @symp_prob
  Scenario: symp_prob.pop_infected
    Given we run the model with symp_prob=0.5
    When we run the model with symp_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 101   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @symp_prob_asymp_prob
  @symp_prob
  Scenario: symp_prob.asymp_prob
    Given we run the model with symp_prob=0.5
    When we run the model with symp_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @symp_prob_symp_quar_prob
  @symp_prob
  Scenario: symp_prob.symp_quar_prob
    Given we run the model with symp_prob=0.5
    When we run the model with symp_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @symp_prob_asymp_quar_prob
  @symp_prob
  Scenario: symp_prob.asymp_quar_prob
    Given we run the model with symp_prob=0.5
    When we run the model with symp_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 1.0   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @symp_prob_trace_probs
  @symp_prob
  Scenario: symp_prob.trace_probs
    Given we run the model with symp_prob=0.5
    When we run the model with symp_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @symp_prob_none
  @symp_prob
  Scenario: symp_prob.None
    Given we run the model with symp_prob=0.5
    When we run the model with symp_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should remain the same

  @symp_prob_n_days
  @symp_prob
  Scenario: symp_prob.n_days
    Given we run the model with symp_prob=0.5
    When we run the model with symp_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should remain the same

  @symp_prob_quar_period
  @symp_prob
  Scenario: symp_prob.quar_period
    Given we run the model with symp_prob=0.5
    When we run the model with symp_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should remain the same

  @symp_prob_pop_size
  @symp_prob
  Scenario: symp_prob.pop_size
    Given we run the model with symp_prob=0.5
    When we run the model with symp_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should remain the same

  @symp_prob_pop_infected
  @symp_prob
  Scenario: symp_prob.pop_infected
    Given we run the model with symp_prob=0.5
    When we run the model with symp_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 101   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should remain the same

  @symp_prob_asymp_prob
  @symp_prob
  Scenario: symp_prob.asymp_prob
    Given we run the model with symp_prob=0.5
    When we run the model with symp_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should remain the same

  @symp_prob_symp_quar_prob
  @symp_prob
  Scenario: symp_prob.symp_quar_prob
    Given we run the model with symp_prob=0.5
    When we run the model with symp_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should remain the same

  @symp_prob_asymp_quar_prob
  @symp_prob
  Scenario: symp_prob.asymp_quar_prob
    Given we run the model with symp_prob=0.5
    When we run the model with symp_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 1.0   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should remain the same

  @symp_prob_trace_probs
  @symp_prob
  Scenario: symp_prob.trace_probs
    Given we run the model with symp_prob=0.5
    When we run the model with symp_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @asymp_prob_none
  @asymp_prob
  Scenario: asymp_prob.None
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should increase

  @asymp_prob_n_days
  @asymp_prob
  Scenario: asymp_prob.n_days
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should increase

  @asymp_prob_quar_period
  @asymp_prob
  Scenario: asymp_prob.quar_period
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should increase

  @asymp_prob_pop_size
  @asymp_prob
  Scenario: asymp_prob.pop_size
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should increase

  @asymp_prob_pop_infected
  @asymp_prob
  Scenario: asymp_prob.pop_infected
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 101   |
    | symp_prob       | 1.0   |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should increase

  @asymp_prob_symp_prob
  @asymp_prob
  Scenario: asymp_prob.symp_prob
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should increase

  @asymp_prob_symp_quar_prob
  @asymp_prob
  Scenario: asymp_prob.symp_quar_prob
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should increase

  @asymp_prob_asymp_quar_prob
  @asymp_prob
  Scenario: asymp_prob.asymp_quar_prob
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 1.0   |
    | trace_probs     | 1.0   |
    Then the cum_tests should increase

  @asymp_prob_trace_probs
  @asymp_prob
  Scenario: asymp_prob.trace_probs
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should increase

  @asymp_prob_none
  @asymp_prob
  Scenario: asymp_prob.None
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should decrease

  @asymp_prob_n_days
  @asymp_prob
  Scenario: asymp_prob.n_days
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should decrease

  @asymp_prob_quar_period
  @asymp_prob
  Scenario: asymp_prob.quar_period
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should decrease

  @asymp_prob_pop_size
  @asymp_prob
  Scenario: asymp_prob.pop_size
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should decrease

  @asymp_prob_pop_infected
  @asymp_prob
  Scenario: asymp_prob.pop_infected
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 101   |
    | symp_prob       | 1.0   |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should decrease

  @asymp_prob_symp_prob
  @asymp_prob
  Scenario: asymp_prob.symp_prob
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should decrease

  @asymp_prob_symp_quar_prob
  @asymp_prob
  Scenario: asymp_prob.symp_quar_prob
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should decrease

  @asymp_prob_asymp_quar_prob
  @asymp_prob
  Scenario: asymp_prob.asymp_quar_prob
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 1.0   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should decrease

  @asymp_prob_trace_probs
  @asymp_prob
  Scenario: asymp_prob.trace_probs
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @asymp_prob_none
  @asymp_prob
  Scenario: asymp_prob.None
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @asymp_prob_n_days
  @asymp_prob
  Scenario: asymp_prob.n_days
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @asymp_prob_quar_period
  @asymp_prob
  Scenario: asymp_prob.quar_period
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @asymp_prob_pop_size
  @asymp_prob
  Scenario: asymp_prob.pop_size
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @asymp_prob_pop_infected
  @asymp_prob
  Scenario: asymp_prob.pop_infected
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 101   |
    | symp_prob       | 1.0   |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @asymp_prob_symp_prob
  @asymp_prob
  Scenario: asymp_prob.symp_prob
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @asymp_prob_symp_quar_prob
  @asymp_prob
  Scenario: asymp_prob.symp_quar_prob
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @asymp_prob_asymp_quar_prob
  @asymp_prob
  Scenario: asymp_prob.asymp_quar_prob
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 1.0   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @asymp_prob_trace_probs
  @asymp_prob
  Scenario: asymp_prob.trace_probs
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @asymp_prob_none
  @asymp_prob
  Scenario: asymp_prob.None
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should remain the same

  @asymp_prob_n_days
  @asymp_prob
  Scenario: asymp_prob.n_days
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should remain the same

  @asymp_prob_quar_period
  @asymp_prob
  Scenario: asymp_prob.quar_period
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should remain the same

  @asymp_prob_pop_size
  @asymp_prob
  Scenario: asymp_prob.pop_size
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should remain the same

  @asymp_prob_pop_infected
  @asymp_prob
  Scenario: asymp_prob.pop_infected
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 101   |
    | symp_prob       | 1.0   |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should remain the same

  @asymp_prob_symp_prob
  @asymp_prob
  Scenario: asymp_prob.symp_prob
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should remain the same

  @asymp_prob_symp_quar_prob
  @asymp_prob
  Scenario: asymp_prob.symp_quar_prob
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should remain the same

  @asymp_prob_asymp_quar_prob
  @asymp_prob
  Scenario: asymp_prob.asymp_quar_prob
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 1.0   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should remain the same

  @asymp_prob_trace_probs
  @asymp_prob
  Scenario: asymp_prob.trace_probs
    Given we run the model with asymp_prob=0.01
    When we run the model with asymp_prob=0.05
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @symp_quar_prob_none
  @symp_quar_prob
  Scenario: symp_quar_prob.None
    Given we run the model with symp_quar_prob=0.5
    When we run the model with symp_quar_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should decrease

  @symp_quar_prob_n_days
  @symp_quar_prob
  Scenario: symp_quar_prob.n_days
    Given we run the model with symp_quar_prob=0.5
    When we run the model with symp_quar_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should decrease

  @symp_quar_prob_quar_period
  @symp_quar_prob
  Scenario: symp_quar_prob.quar_period
    Given we run the model with symp_quar_prob=0.5
    When we run the model with symp_quar_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should decrease

  @symp_quar_prob_pop_size
  @symp_quar_prob
  Scenario: symp_quar_prob.pop_size
    Given we run the model with symp_quar_prob=0.5
    When we run the model with symp_quar_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should decrease

  @symp_quar_prob_pop_infected
  @symp_quar_prob
  Scenario: symp_quar_prob.pop_infected
    Given we run the model with symp_quar_prob=0.5
    When we run the model with symp_quar_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 101   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should decrease

  @symp_quar_prob_symp_prob
  @symp_quar_prob
  Scenario: symp_quar_prob.symp_prob
    Given we run the model with symp_quar_prob=0.5
    When we run the model with symp_quar_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should decrease

  @symp_quar_prob_asymp_prob
  @symp_quar_prob
  Scenario: symp_quar_prob.asymp_prob
    Given we run the model with symp_quar_prob=0.5
    When we run the model with symp_quar_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.05  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should decrease

  @symp_quar_prob_asymp_quar_prob
  @symp_quar_prob
  Scenario: symp_quar_prob.asymp_quar_prob
    Given we run the model with symp_quar_prob=0.5
    When we run the model with symp_quar_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 1.0   |
    | trace_probs     | 1.0   |
    Then the cum_tests should decrease

  @symp_quar_prob_trace_probs
  @symp_quar_prob
  Scenario: symp_quar_prob.trace_probs
    Given we run the model with symp_quar_prob=0.5
    When we run the model with symp_quar_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should decrease

  @symp_quar_prob_none
  @symp_quar_prob
  Scenario: symp_quar_prob.None
    Given we run the model with symp_quar_prob=0.5
    When we run the model with symp_quar_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_n_days
  @symp_quar_prob
  Scenario: symp_quar_prob.n_days
    Given we run the model with symp_quar_prob=0.5
    When we run the model with symp_quar_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_quar_period
  @symp_quar_prob
  Scenario: symp_quar_prob.quar_period
    Given we run the model with symp_quar_prob=0.5
    When we run the model with symp_quar_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_pop_size
  @symp_quar_prob
  Scenario: symp_quar_prob.pop_size
    Given we run the model with symp_quar_prob=0.5
    When we run the model with symp_quar_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_pop_infected
  @symp_quar_prob
  Scenario: symp_quar_prob.pop_infected
    Given we run the model with symp_quar_prob=0.5
    When we run the model with symp_quar_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 101   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_symp_prob
  @symp_quar_prob
  Scenario: symp_quar_prob.symp_prob
    Given we run the model with symp_quar_prob=0.5
    When we run the model with symp_quar_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_asymp_prob
  @symp_quar_prob
  Scenario: symp_quar_prob.asymp_prob
    Given we run the model with symp_quar_prob=0.5
    When we run the model with symp_quar_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.05  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_asymp_quar_prob
  @symp_quar_prob
  Scenario: symp_quar_prob.asymp_quar_prob
    Given we run the model with symp_quar_prob=0.5
    When we run the model with symp_quar_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 1.0   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_trace_probs
  @symp_quar_prob
  Scenario: symp_quar_prob.trace_probs
    Given we run the model with symp_quar_prob=0.5
    When we run the model with symp_quar_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_none
  @symp_quar_prob
  Scenario: symp_quar_prob.None
    Given we run the model with symp_quar_prob=0.5
    When we run the model with symp_quar_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @symp_quar_prob_n_days
  @symp_quar_prob
  Scenario: symp_quar_prob.n_days
    Given we run the model with symp_quar_prob=0.5
    When we run the model with symp_quar_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @symp_quar_prob_quar_period
  @symp_quar_prob
  Scenario: symp_quar_prob.quar_period
    Given we run the model with symp_quar_prob=0.5
    When we run the model with symp_quar_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @symp_quar_prob_pop_size
  @symp_quar_prob
  Scenario: symp_quar_prob.pop_size
    Given we run the model with symp_quar_prob=0.5
    When we run the model with symp_quar_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @symp_quar_prob_pop_infected
  @symp_quar_prob
  Scenario: symp_quar_prob.pop_infected
    Given we run the model with symp_quar_prob=0.5
    When we run the model with symp_quar_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 101   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @symp_quar_prob_symp_prob
  @symp_quar_prob
  Scenario: symp_quar_prob.symp_prob
    Given we run the model with symp_quar_prob=0.5
    When we run the model with symp_quar_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @symp_quar_prob_asymp_prob
  @symp_quar_prob
  Scenario: symp_quar_prob.asymp_prob
    Given we run the model with symp_quar_prob=0.5
    When we run the model with symp_quar_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.05  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @symp_quar_prob_asymp_quar_prob
  @symp_quar_prob
  Scenario: symp_quar_prob.asymp_quar_prob
    Given we run the model with symp_quar_prob=0.5
    When we run the model with symp_quar_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 1.0   |
    | trace_probs     | 1.0   |
    Then the cum_infections should decrease

  @symp_quar_prob_trace_probs
  @symp_quar_prob
  Scenario: symp_quar_prob.trace_probs
    Given we run the model with symp_quar_prob=0.5
    When we run the model with symp_quar_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @symp_quar_prob_none
  @symp_quar_prob
  Scenario: symp_quar_prob.None
    Given we run the model with symp_quar_prob=0.5
    When we run the model with symp_quar_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should remain the same

  @symp_quar_prob_n_days
  @symp_quar_prob
  Scenario: symp_quar_prob.n_days
    Given we run the model with symp_quar_prob=0.5
    When we run the model with symp_quar_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should remain the same

  @symp_quar_prob_quar_period
  @symp_quar_prob
  Scenario: symp_quar_prob.quar_period
    Given we run the model with symp_quar_prob=0.5
    When we run the model with symp_quar_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should remain the same

  @symp_quar_prob_pop_size
  @symp_quar_prob
  Scenario: symp_quar_prob.pop_size
    Given we run the model with symp_quar_prob=0.5
    When we run the model with symp_quar_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should remain the same

  @symp_quar_prob_pop_infected
  @symp_quar_prob
  Scenario: symp_quar_prob.pop_infected
    Given we run the model with symp_quar_prob=0.5
    When we run the model with symp_quar_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 101   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should remain the same

  @symp_quar_prob_symp_prob
  @symp_quar_prob
  Scenario: symp_quar_prob.symp_prob
    Given we run the model with symp_quar_prob=0.5
    When we run the model with symp_quar_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should remain the same

  @symp_quar_prob_asymp_prob
  @symp_quar_prob
  Scenario: symp_quar_prob.asymp_prob
    Given we run the model with symp_quar_prob=0.5
    When we run the model with symp_quar_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.05  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should remain the same

  @symp_quar_prob_asymp_quar_prob
  @symp_quar_prob
  Scenario: symp_quar_prob.asymp_quar_prob
    Given we run the model with symp_quar_prob=0.5
    When we run the model with symp_quar_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 1.0   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should remain the same

  @symp_quar_prob_trace_probs
  @symp_quar_prob
  Scenario: symp_quar_prob.trace_probs
    Given we run the model with symp_quar_prob=0.5
    When we run the model with symp_quar_prob=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_none
  @asymp_quar_prob
  Scenario: asymp_quar_prob.None
    Given we run the model with asymp_quar_prob=0.5
    When we run the model with asymp_quar_prob=1.0
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 20    |
    | pop_size       | 10000 |
    | pop_infected   | 100   |
    | symp_prob      | 1.0   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 1.0   |
    | trace_probs    | 1.0   |
    Then the cum_tests should decrease

  @asymp_quar_prob_n_days
  @asymp_quar_prob
  Scenario: asymp_quar_prob.n_days
    Given we run the model with asymp_quar_prob=0.5
    When we run the model with asymp_quar_prob=1.0
    And effect modifier values
    | modifier       | value |
    | n_days         | 60    |
    | quar_period    | 20    |
    | pop_size       | 10000 |
    | pop_infected   | 100   |
    | symp_prob      | 1.0   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 1.0   |
    | trace_probs    | 1.0   |
    Then the cum_tests should decrease

  @asymp_quar_prob_quar_period
  @asymp_quar_prob
  Scenario: asymp_quar_prob.quar_period
    Given we run the model with asymp_quar_prob=0.5
    When we run the model with asymp_quar_prob=1.0
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 14    |
    | pop_size       | 10000 |
    | pop_infected   | 100   |
    | symp_prob      | 1.0   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 1.0   |
    | trace_probs    | 1.0   |
    Then the cum_tests should decrease

  @asymp_quar_prob_pop_size
  @asymp_quar_prob
  Scenario: asymp_quar_prob.pop_size
    Given we run the model with asymp_quar_prob=0.5
    When we run the model with asymp_quar_prob=1.0
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 20    |
    | pop_size       | 20000 |
    | pop_infected   | 100   |
    | symp_prob      | 1.0   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 1.0   |
    | trace_probs    | 1.0   |
    Then the cum_tests should decrease

  @asymp_quar_prob_pop_infected
  @asymp_quar_prob
  Scenario: asymp_quar_prob.pop_infected
    Given we run the model with asymp_quar_prob=0.5
    When we run the model with asymp_quar_prob=1.0
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 20    |
    | pop_size       | 10000 |
    | pop_infected   | 101   |
    | symp_prob      | 1.0   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 1.0   |
    | trace_probs    | 1.0   |
    Then the cum_tests should decrease

  @asymp_quar_prob_symp_prob
  @asymp_quar_prob
  Scenario: asymp_quar_prob.symp_prob
    Given we run the model with asymp_quar_prob=0.5
    When we run the model with asymp_quar_prob=1.0
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 20    |
    | pop_size       | 10000 |
    | pop_infected   | 100   |
    | symp_prob      | 0.5   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 1.0   |
    | trace_probs    | 1.0   |
    Then the cum_tests should decrease

  @asymp_quar_prob_asymp_prob
  @asymp_quar_prob
  Scenario: asymp_quar_prob.asymp_prob
    Given we run the model with asymp_quar_prob=0.5
    When we run the model with asymp_quar_prob=1.0
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 20    |
    | pop_size       | 10000 |
    | pop_infected   | 100   |
    | symp_prob      | 1.0   |
    | asymp_prob     | 0.05  |
    | symp_quar_prob | 1.0   |
    | trace_probs    | 1.0   |
    Then the cum_tests should decrease

  @asymp_quar_prob_symp_quar_prob
  @asymp_quar_prob
  Scenario: asymp_quar_prob.symp_quar_prob
    Given we run the model with asymp_quar_prob=0.5
    When we run the model with asymp_quar_prob=1.0
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 20    |
    | pop_size       | 10000 |
    | pop_infected   | 100   |
    | symp_prob      | 1.0   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 0.5   |
    | trace_probs    | 1.0   |
    Then the cum_tests should decrease

  @asymp_quar_prob_trace_probs
  @asymp_quar_prob
  Scenario: asymp_quar_prob.trace_probs
    Given we run the model with asymp_quar_prob=0.5
    When we run the model with asymp_quar_prob=1.0
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 20    |
    | pop_size       | 10000 |
    | pop_infected   | 100   |
    | symp_prob      | 1.0   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 1.0   |
    | trace_probs    | 0.5   |
    Then the cum_tests should decrease

  @asymp_quar_prob_none
  @asymp_quar_prob
  Scenario: asymp_quar_prob.None
    Given we run the model with asymp_quar_prob=0.5
    When we run the model with asymp_quar_prob=1.0
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 20    |
    | pop_size       | 10000 |
    | pop_infected   | 100   |
    | symp_prob      | 1.0   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 1.0   |
    | trace_probs    | 1.0   |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_n_days
  @asymp_quar_prob
  Scenario: asymp_quar_prob.n_days
    Given we run the model with asymp_quar_prob=0.5
    When we run the model with asymp_quar_prob=1.0
    And effect modifier values
    | modifier       | value |
    | n_days         | 60    |
    | quar_period    | 20    |
    | pop_size       | 10000 |
    | pop_infected   | 100   |
    | symp_prob      | 1.0   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 1.0   |
    | trace_probs    | 1.0   |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_quar_period
  @asymp_quar_prob
  Scenario: asymp_quar_prob.quar_period
    Given we run the model with asymp_quar_prob=0.5
    When we run the model with asymp_quar_prob=1.0
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 14    |
    | pop_size       | 10000 |
    | pop_infected   | 100   |
    | symp_prob      | 1.0   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 1.0   |
    | trace_probs    | 1.0   |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_pop_size
  @asymp_quar_prob
  Scenario: asymp_quar_prob.pop_size
    Given we run the model with asymp_quar_prob=0.5
    When we run the model with asymp_quar_prob=1.0
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 20    |
    | pop_size       | 20000 |
    | pop_infected   | 100   |
    | symp_prob      | 1.0   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 1.0   |
    | trace_probs    | 1.0   |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_pop_infected
  @asymp_quar_prob
  Scenario: asymp_quar_prob.pop_infected
    Given we run the model with asymp_quar_prob=0.5
    When we run the model with asymp_quar_prob=1.0
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 20    |
    | pop_size       | 10000 |
    | pop_infected   | 101   |
    | symp_prob      | 1.0   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 1.0   |
    | trace_probs    | 1.0   |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_symp_prob
  @asymp_quar_prob
  Scenario: asymp_quar_prob.symp_prob
    Given we run the model with asymp_quar_prob=0.5
    When we run the model with asymp_quar_prob=1.0
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 20    |
    | pop_size       | 10000 |
    | pop_infected   | 100   |
    | symp_prob      | 0.5   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 1.0   |
    | trace_probs    | 1.0   |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_asymp_prob
  @asymp_quar_prob
  Scenario: asymp_quar_prob.asymp_prob
    Given we run the model with asymp_quar_prob=0.5
    When we run the model with asymp_quar_prob=1.0
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 20    |
    | pop_size       | 10000 |
    | pop_infected   | 100   |
    | symp_prob      | 1.0   |
    | asymp_prob     | 0.05  |
    | symp_quar_prob | 1.0   |
    | trace_probs    | 1.0   |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_symp_quar_prob
  @asymp_quar_prob
  Scenario: asymp_quar_prob.symp_quar_prob
    Given we run the model with asymp_quar_prob=0.5
    When we run the model with asymp_quar_prob=1.0
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 20    |
    | pop_size       | 10000 |
    | pop_infected   | 100   |
    | symp_prob      | 1.0   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 0.5   |
    | trace_probs    | 1.0   |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_trace_probs
  @asymp_quar_prob
  Scenario: asymp_quar_prob.trace_probs
    Given we run the model with asymp_quar_prob=0.5
    When we run the model with asymp_quar_prob=1.0
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 20    |
    | pop_size       | 10000 |
    | pop_infected   | 100   |
    | symp_prob      | 1.0   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 1.0   |
    | trace_probs    | 0.5   |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_none
  @asymp_quar_prob
  Scenario: asymp_quar_prob.None
    Given we run the model with asymp_quar_prob=0.5
    When we run the model with asymp_quar_prob=1.0
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 20    |
    | pop_size       | 10000 |
    | pop_infected   | 100   |
    | symp_prob      | 1.0   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 1.0   |
    | trace_probs    | 1.0   |
    Then the cum_infections should decrease

  @asymp_quar_prob_n_days
  @asymp_quar_prob
  Scenario: asymp_quar_prob.n_days
    Given we run the model with asymp_quar_prob=0.5
    When we run the model with asymp_quar_prob=1.0
    And effect modifier values
    | modifier       | value |
    | n_days         | 60    |
    | quar_period    | 20    |
    | pop_size       | 10000 |
    | pop_infected   | 100   |
    | symp_prob      | 1.0   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 1.0   |
    | trace_probs    | 1.0   |
    Then the cum_infections should decrease

  @asymp_quar_prob_quar_period
  @asymp_quar_prob
  Scenario: asymp_quar_prob.quar_period
    Given we run the model with asymp_quar_prob=0.5
    When we run the model with asymp_quar_prob=1.0
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 14    |
    | pop_size       | 10000 |
    | pop_infected   | 100   |
    | symp_prob      | 1.0   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 1.0   |
    | trace_probs    | 1.0   |
    Then the cum_infections should decrease

  @asymp_quar_prob_pop_size
  @asymp_quar_prob
  Scenario: asymp_quar_prob.pop_size
    Given we run the model with asymp_quar_prob=0.5
    When we run the model with asymp_quar_prob=1.0
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 20    |
    | pop_size       | 20000 |
    | pop_infected   | 100   |
    | symp_prob      | 1.0   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 1.0   |
    | trace_probs    | 1.0   |
    Then the cum_infections should decrease

  @asymp_quar_prob_pop_infected
  @asymp_quar_prob
  Scenario: asymp_quar_prob.pop_infected
    Given we run the model with asymp_quar_prob=0.5
    When we run the model with asymp_quar_prob=1.0
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 20    |
    | pop_size       | 10000 |
    | pop_infected   | 101   |
    | symp_prob      | 1.0   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 1.0   |
    | trace_probs    | 1.0   |
    Then the cum_infections should decrease

  @asymp_quar_prob_symp_prob
  @asymp_quar_prob
  Scenario: asymp_quar_prob.symp_prob
    Given we run the model with asymp_quar_prob=0.5
    When we run the model with asymp_quar_prob=1.0
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 20    |
    | pop_size       | 10000 |
    | pop_infected   | 100   |
    | symp_prob      | 0.5   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 1.0   |
    | trace_probs    | 1.0   |
    Then the cum_infections should decrease

  @asymp_quar_prob_asymp_prob
  @asymp_quar_prob
  Scenario: asymp_quar_prob.asymp_prob
    Given we run the model with asymp_quar_prob=0.5
    When we run the model with asymp_quar_prob=1.0
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 20    |
    | pop_size       | 10000 |
    | pop_infected   | 100   |
    | symp_prob      | 1.0   |
    | asymp_prob     | 0.05  |
    | symp_quar_prob | 1.0   |
    | trace_probs    | 1.0   |
    Then the cum_infections should decrease

  @asymp_quar_prob_symp_quar_prob
  @asymp_quar_prob
  Scenario: asymp_quar_prob.symp_quar_prob
    Given we run the model with asymp_quar_prob=0.5
    When we run the model with asymp_quar_prob=1.0
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 20    |
    | pop_size       | 10000 |
    | pop_infected   | 100   |
    | symp_prob      | 1.0   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 0.5   |
    | trace_probs    | 1.0   |
    Then the cum_infections should decrease

  @asymp_quar_prob_trace_probs
  @asymp_quar_prob
  Scenario: asymp_quar_prob.trace_probs
    Given we run the model with asymp_quar_prob=0.5
    When we run the model with asymp_quar_prob=1.0
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 20    |
    | pop_size       | 10000 |
    | pop_infected   | 100   |
    | symp_prob      | 1.0   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 1.0   |
    | trace_probs    | 0.5   |
    Then the cum_infections should decrease

  @asymp_quar_prob_none
  @asymp_quar_prob
  Scenario: asymp_quar_prob.None
    Given we run the model with asymp_quar_prob=0.5
    When we run the model with asymp_quar_prob=1.0
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 20    |
    | pop_size       | 10000 |
    | pop_infected   | 100   |
    | symp_prob      | 1.0   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 1.0   |
    | trace_probs    | 1.0   |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_n_days
  @asymp_quar_prob
  Scenario: asymp_quar_prob.n_days
    Given we run the model with asymp_quar_prob=0.5
    When we run the model with asymp_quar_prob=1.0
    And effect modifier values
    | modifier       | value |
    | n_days         | 60    |
    | quar_period    | 20    |
    | pop_size       | 10000 |
    | pop_infected   | 100   |
    | symp_prob      | 1.0   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 1.0   |
    | trace_probs    | 1.0   |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_quar_period
  @asymp_quar_prob
  Scenario: asymp_quar_prob.quar_period
    Given we run the model with asymp_quar_prob=0.5
    When we run the model with asymp_quar_prob=1.0
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 14    |
    | pop_size       | 10000 |
    | pop_infected   | 100   |
    | symp_prob      | 1.0   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 1.0   |
    | trace_probs    | 1.0   |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_pop_size
  @asymp_quar_prob
  Scenario: asymp_quar_prob.pop_size
    Given we run the model with asymp_quar_prob=0.5
    When we run the model with asymp_quar_prob=1.0
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 20    |
    | pop_size       | 20000 |
    | pop_infected   | 100   |
    | symp_prob      | 1.0   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 1.0   |
    | trace_probs    | 1.0   |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_pop_infected
  @asymp_quar_prob
  Scenario: asymp_quar_prob.pop_infected
    Given we run the model with asymp_quar_prob=0.5
    When we run the model with asymp_quar_prob=1.0
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 20    |
    | pop_size       | 10000 |
    | pop_infected   | 101   |
    | symp_prob      | 1.0   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 1.0   |
    | trace_probs    | 1.0   |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_symp_prob
  @asymp_quar_prob
  Scenario: asymp_quar_prob.symp_prob
    Given we run the model with asymp_quar_prob=0.5
    When we run the model with asymp_quar_prob=1.0
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 20    |
    | pop_size       | 10000 |
    | pop_infected   | 100   |
    | symp_prob      | 0.5   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 1.0   |
    | trace_probs    | 1.0   |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_asymp_prob
  @asymp_quar_prob
  Scenario: asymp_quar_prob.asymp_prob
    Given we run the model with asymp_quar_prob=0.5
    When we run the model with asymp_quar_prob=1.0
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 20    |
    | pop_size       | 10000 |
    | pop_infected   | 100   |
    | symp_prob      | 1.0   |
    | asymp_prob     | 0.05  |
    | symp_quar_prob | 1.0   |
    | trace_probs    | 1.0   |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_symp_quar_prob
  @asymp_quar_prob
  Scenario: asymp_quar_prob.symp_quar_prob
    Given we run the model with asymp_quar_prob=0.5
    When we run the model with asymp_quar_prob=1.0
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 20    |
    | pop_size       | 10000 |
    | pop_infected   | 100   |
    | symp_prob      | 1.0   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 0.5   |
    | trace_probs    | 1.0   |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_trace_probs
  @asymp_quar_prob
  Scenario: asymp_quar_prob.trace_probs
    Given we run the model with asymp_quar_prob=0.5
    When we run the model with asymp_quar_prob=1.0
    And effect modifier values
    | modifier       | value |
    | n_days         | 120   |
    | quar_period    | 20    |
    | pop_size       | 10000 |
    | pop_infected   | 100   |
    | symp_prob      | 1.0   |
    | asymp_prob     | 0.01  |
    | symp_quar_prob | 1.0   |
    | trace_probs    | 0.5   |
    Then the cum_deaths should remain the same

  @trace_probs_none
  @trace_probs
  Scenario: trace_probs.None
    Given we run the model with trace_probs=0.5
    When we run the model with trace_probs=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    Then the cum_tests should decrease

  @trace_probs_n_days
  @trace_probs
  Scenario: trace_probs.n_days
    Given we run the model with trace_probs=0.5
    When we run the model with trace_probs=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    Then the cum_tests should decrease

  @trace_probs_quar_period
  @trace_probs
  Scenario: trace_probs.quar_period
    Given we run the model with trace_probs=0.5
    When we run the model with trace_probs=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    Then the cum_tests should decrease

  @trace_probs_pop_size
  @trace_probs
  Scenario: trace_probs.pop_size
    Given we run the model with trace_probs=0.5
    When we run the model with trace_probs=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    Then the cum_tests should decrease

  @trace_probs_pop_infected
  @trace_probs
  Scenario: trace_probs.pop_infected
    Given we run the model with trace_probs=0.5
    When we run the model with trace_probs=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 101   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    Then the cum_tests should decrease

  @trace_probs_symp_prob
  @trace_probs
  Scenario: trace_probs.symp_prob
    Given we run the model with trace_probs=0.5
    When we run the model with trace_probs=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    Then the cum_tests should decrease

  @trace_probs_asymp_prob
  @trace_probs
  Scenario: trace_probs.asymp_prob
    Given we run the model with trace_probs=0.5
    When we run the model with trace_probs=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    Then the cum_tests should decrease

  @trace_probs_symp_quar_prob
  @trace_probs
  Scenario: trace_probs.symp_quar_prob
    Given we run the model with trace_probs=0.5
    When we run the model with trace_probs=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    Then the cum_tests should decrease

  @trace_probs_asymp_quar_prob
  @trace_probs
  Scenario: trace_probs.asymp_quar_prob
    Given we run the model with trace_probs=0.5
    When we run the model with trace_probs=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 1.0   |
    Then the cum_tests should decrease

  @trace_probs_none
  @trace_probs
  Scenario: trace_probs.None
    Given we run the model with trace_probs=0.5
    When we run the model with trace_probs=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    Then the cum_quarantined should decrease

  @trace_probs_n_days
  @trace_probs
  Scenario: trace_probs.n_days
    Given we run the model with trace_probs=0.5
    When we run the model with trace_probs=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    Then the cum_quarantined should decrease

  @trace_probs_quar_period
  @trace_probs
  Scenario: trace_probs.quar_period
    Given we run the model with trace_probs=0.5
    When we run the model with trace_probs=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    Then the cum_quarantined should decrease

  @trace_probs_pop_size
  @trace_probs
  Scenario: trace_probs.pop_size
    Given we run the model with trace_probs=0.5
    When we run the model with trace_probs=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    Then the cum_quarantined should decrease

  @trace_probs_pop_infected
  @trace_probs
  Scenario: trace_probs.pop_infected
    Given we run the model with trace_probs=0.5
    When we run the model with trace_probs=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 101   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    Then the cum_quarantined should decrease

  @trace_probs_symp_prob
  @trace_probs
  Scenario: trace_probs.symp_prob
    Given we run the model with trace_probs=0.5
    When we run the model with trace_probs=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    Then the cum_quarantined should decrease

  @trace_probs_asymp_prob
  @trace_probs
  Scenario: trace_probs.asymp_prob
    Given we run the model with trace_probs=0.5
    When we run the model with trace_probs=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    Then the cum_quarantined should decrease

  @trace_probs_symp_quar_prob
  @trace_probs
  Scenario: trace_probs.symp_quar_prob
    Given we run the model with trace_probs=0.5
    When we run the model with trace_probs=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    Then the cum_quarantined should decrease

  @trace_probs_asymp_quar_prob
  @trace_probs
  Scenario: trace_probs.asymp_quar_prob
    Given we run the model with trace_probs=0.5
    When we run the model with trace_probs=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 1.0   |
    Then the cum_quarantined should decrease

  @trace_probs_none
  @trace_probs
  Scenario: trace_probs.None
    Given we run the model with trace_probs=0.5
    When we run the model with trace_probs=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    Then the cum_infections should decrease

  @trace_probs_n_days
  @trace_probs
  Scenario: trace_probs.n_days
    Given we run the model with trace_probs=0.5
    When we run the model with trace_probs=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    Then the cum_infections should decrease

  @trace_probs_quar_period
  @trace_probs
  Scenario: trace_probs.quar_period
    Given we run the model with trace_probs=0.5
    When we run the model with trace_probs=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    Then the cum_infections should decrease

  @trace_probs_pop_size
  @trace_probs
  Scenario: trace_probs.pop_size
    Given we run the model with trace_probs=0.5
    When we run the model with trace_probs=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    Then the cum_infections should decrease

  @trace_probs_pop_infected
  @trace_probs
  Scenario: trace_probs.pop_infected
    Given we run the model with trace_probs=0.5
    When we run the model with trace_probs=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 101   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    Then the cum_infections should decrease

  @trace_probs_symp_prob
  @trace_probs
  Scenario: trace_probs.symp_prob
    Given we run the model with trace_probs=0.5
    When we run the model with trace_probs=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    Then the cum_infections should decrease

  @trace_probs_asymp_prob
  @trace_probs
  Scenario: trace_probs.asymp_prob
    Given we run the model with trace_probs=0.5
    When we run the model with trace_probs=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    Then the cum_infections should decrease

  @trace_probs_symp_quar_prob
  @trace_probs
  Scenario: trace_probs.symp_quar_prob
    Given we run the model with trace_probs=0.5
    When we run the model with trace_probs=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    Then the cum_infections should decrease

  @trace_probs_asymp_quar_prob
  @trace_probs
  Scenario: trace_probs.asymp_quar_prob
    Given we run the model with trace_probs=0.5
    When we run the model with trace_probs=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 1.0   |
    Then the cum_infections should decrease

  @trace_probs_none
  @trace_probs
  Scenario: trace_probs.None
    Given we run the model with trace_probs=0.5
    When we run the model with trace_probs=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    Then the cum_deaths should remain the same

  @trace_probs_n_days
  @trace_probs
  Scenario: trace_probs.n_days
    Given we run the model with trace_probs=0.5
    When we run the model with trace_probs=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    Then the cum_deaths should remain the same

  @trace_probs_quar_period
  @trace_probs
  Scenario: trace_probs.quar_period
    Given we run the model with trace_probs=0.5
    When we run the model with trace_probs=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    Then the cum_deaths should remain the same

  @trace_probs_pop_size
  @trace_probs
  Scenario: trace_probs.pop_size
    Given we run the model with trace_probs=0.5
    When we run the model with trace_probs=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    Then the cum_deaths should remain the same

  @trace_probs_pop_infected
  @trace_probs
  Scenario: trace_probs.pop_infected
    Given we run the model with trace_probs=0.5
    When we run the model with trace_probs=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 101   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    Then the cum_deaths should remain the same

  @trace_probs_symp_prob
  @trace_probs
  Scenario: trace_probs.symp_prob
    Given we run the model with trace_probs=0.5
    When we run the model with trace_probs=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    Then the cum_deaths should remain the same

  @trace_probs_asymp_prob
  @trace_probs
  Scenario: trace_probs.asymp_prob
    Given we run the model with trace_probs=0.5
    When we run the model with trace_probs=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    Then the cum_deaths should remain the same

  @trace_probs_symp_quar_prob
  @trace_probs
  Scenario: trace_probs.symp_quar_prob
    Given we run the model with trace_probs=0.5
    When we run the model with trace_probs=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    Then the cum_deaths should remain the same

  @trace_probs_asymp_quar_prob
  @trace_probs
  Scenario: trace_probs.asymp_quar_prob
    Given we run the model with trace_probs=0.5
    When we run the model with trace_probs=1.0
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 1.0   |
    Then the cum_deaths should remain the same

  @n_days__1_1_none
  @n_days
  Scenario: n_days -- @1.1.None
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should increase

  @n_days__1_1_quar_period
  @n_days
  Scenario: n_days -- @1.1.quar_period
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 5     |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should increase

  @n_days__1_1_pop_size
  @n_days
  Scenario: n_days -- @1.1.pop_size
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 20    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should increase

  @n_days__1_1_pop_infected
  @n_days
  Scenario: n_days -- @1.1.pop_infected
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 101   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should increase

  @n_days__1_1_symp_prob
  @n_days
  Scenario: n_days -- @1.1.symp_prob
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should increase

  @n_days__1_1_asymp_prob
  @n_days
  Scenario: n_days -- @1.1.asymp_prob
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should increase

  @n_days__1_1_symp_quar_prob
  @n_days
  Scenario: n_days -- @1.1.symp_quar_prob
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should increase

  @n_days__1_1_asymp_quar_prob
  @n_days
  Scenario: n_days -- @1.1.asymp_quar_prob
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 1.0   |
    | trace_probs     | 1.0   |
    Then the cum_tests should increase

  @n_days__1_1_trace_probs
  @n_days
  Scenario: n_days -- @1.1.trace_probs
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should increase

  @n_days__1_2_none
  @n_days
  Scenario: n_days -- @1.2.None
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should increase

  @n_days__1_2_quar_period
  @n_days
  Scenario: n_days -- @1.2.quar_period
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 5     |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should increase

  @n_days__1_2_pop_size
  @n_days
  Scenario: n_days -- @1.2.pop_size
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 20    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should increase

  @n_days__1_2_pop_infected
  @n_days
  Scenario: n_days -- @1.2.pop_infected
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 101   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should increase

  @n_days__1_2_symp_prob
  @n_days
  Scenario: n_days -- @1.2.symp_prob
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should increase

  @n_days__1_2_asymp_prob
  @n_days
  Scenario: n_days -- @1.2.asymp_prob
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should increase

  @n_days__1_2_symp_quar_prob
  @n_days
  Scenario: n_days -- @1.2.symp_quar_prob
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should increase

  @n_days__1_2_asymp_quar_prob
  @n_days
  Scenario: n_days -- @1.2.asymp_quar_prob
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 1.0   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should increase

  @n_days__1_2_trace_probs
  @n_days
  Scenario: n_days -- @1.2.trace_probs
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should increase

  @n_days__1_3_none
  @n_days
  Scenario: n_days -- @1.3.None
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should increase

  @n_days__1_3_quar_period
  @n_days
  Scenario: n_days -- @1.3.quar_period
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 14    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should increase

  @n_days__1_3_pop_size
  @n_days
  Scenario: n_days -- @1.3.pop_size
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 20    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should increase

  @n_days__1_3_pop_infected
  @n_days
  Scenario: n_days -- @1.3.pop_infected
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 101   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should increase

  @n_days__1_3_symp_prob
  @n_days
  Scenario: n_days -- @1.3.symp_prob
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should increase

  @n_days__1_3_asymp_prob
  @n_days
  Scenario: n_days -- @1.3.asymp_prob
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should increase

  @n_days__1_3_symp_quar_prob
  @n_days
  Scenario: n_days -- @1.3.symp_quar_prob
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should increase

  @n_days__1_3_asymp_quar_prob
  @n_days
  Scenario: n_days -- @1.3.asymp_quar_prob
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 1.0   |
    | trace_probs     | 1.0   |
    Then the cum_infections should increase

  @n_days__1_3_trace_probs
  @n_days
  Scenario: n_days -- @1.3.trace_probs
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should increase

  @n_days__1_4_none
  @n_days
  Scenario: n_days -- @1.4.None
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should increase

  @n_days__1_4_quar_period
  @n_days
  Scenario: n_days -- @1.4.quar_period
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 14    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should increase

  @n_days__1_4_pop_size
  @n_days
  Scenario: n_days -- @1.4.pop_size
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 20    |
    | pop_size        | 20000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should increase

  @n_days__1_4_pop_infected
  @n_days
  Scenario: n_days -- @1.4.pop_infected
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 101   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should increase

  @n_days__1_4_symp_prob
  @n_days
  Scenario: n_days -- @1.4.symp_prob
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should increase

  @n_days__1_4_asymp_prob
  @n_days
  Scenario: n_days -- @1.4.asymp_prob
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should increase

  @n_days__1_4_symp_quar_prob
  @n_days
  Scenario: n_days -- @1.4.symp_quar_prob
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should increase

  @n_days__1_4_asymp_quar_prob
  @n_days
  Scenario: n_days -- @1.4.asymp_quar_prob
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 1.0   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should increase

  @n_days__1_4_trace_probs
  @n_days
  Scenario: n_days -- @1.4.trace_probs
    Given we run the model with n_days=60
    When we run the model with n_days=120
    And effect modifier values
    | modifier        | value |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should increase

  @pop_size__1_1_none
  @pop_size
  Scenario: pop_size -- @1.1.None
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should increase

  @pop_size__1_1_n_days
  @pop_size
  Scenario: pop_size -- @1.1.n_days
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 20    |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should increase

  @pop_size__1_1_quar_period
  @pop_size
  Scenario: pop_size -- @1.1.quar_period
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should increase

  @pop_size__1_1_pop_infected
  @pop_size
  Scenario: pop_size -- @1.1.pop_infected
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_infected    | 101   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should increase

  @pop_size__1_1_symp_prob
  @pop_size
  Scenario: pop_size -- @1.1.symp_prob
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should increase

  @pop_size__1_1_asymp_prob
  @pop_size
  Scenario: pop_size -- @1.1.asymp_prob
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should increase

  @pop_size__1_1_symp_quar_prob
  @pop_size
  Scenario: pop_size -- @1.1.symp_quar_prob
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should increase

  @pop_size__1_1_asymp_quar_prob
  @pop_size
  Scenario: pop_size -- @1.1.asymp_quar_prob
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 1.0   |
    | trace_probs     | 1.0   |
    Then the cum_tests should increase

  @pop_size__1_1_trace_probs
  @pop_size
  Scenario: pop_size -- @1.1.trace_probs
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should increase

  @pop_size__1_2_none
  @pop_size
  Scenario: pop_size -- @1.2.None
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should increase

  @pop_size__1_2_n_days
  @pop_size
  Scenario: pop_size -- @1.2.n_days
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 20    |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should increase

  @pop_size__1_2_quar_period
  @pop_size
  Scenario: pop_size -- @1.2.quar_period
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 5     |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should increase

  @pop_size__1_2_pop_infected
  @pop_size
  Scenario: pop_size -- @1.2.pop_infected
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_infected    | 101   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should increase

  @pop_size__1_2_symp_prob
  @pop_size
  Scenario: pop_size -- @1.2.symp_prob
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should increase

  @pop_size__1_2_asymp_prob
  @pop_size
  Scenario: pop_size -- @1.2.asymp_prob
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should increase

  @pop_size__1_2_symp_quar_prob
  @pop_size
  Scenario: pop_size -- @1.2.symp_quar_prob
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should increase

  @pop_size__1_2_asymp_quar_prob
  @pop_size
  Scenario: pop_size -- @1.2.asymp_quar_prob
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 1.0   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should increase

  @pop_size__1_2_trace_probs
  @pop_size
  Scenario: pop_size -- @1.2.trace_probs
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should increase

  @pop_size__1_3_none
  @pop_size
  Scenario: pop_size -- @1.3.None
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should increase

  @pop_size__1_3_n_days
  @pop_size
  Scenario: pop_size -- @1.3.n_days
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 20    |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should increase

  @pop_size__1_3_quar_period
  @pop_size
  Scenario: pop_size -- @1.3.quar_period
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should increase

  @pop_size__1_3_pop_infected
  @pop_size
  Scenario: pop_size -- @1.3.pop_infected
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_infected    | 101   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should increase

  @pop_size__1_3_symp_prob
  @pop_size
  Scenario: pop_size -- @1.3.symp_prob
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should increase

  @pop_size__1_3_asymp_prob
  @pop_size
  Scenario: pop_size -- @1.3.asymp_prob
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should increase

  @pop_size__1_3_symp_quar_prob
  @pop_size
  Scenario: pop_size -- @1.3.symp_quar_prob
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should increase

  @pop_size__1_3_asymp_quar_prob
  @pop_size
  Scenario: pop_size -- @1.3.asymp_quar_prob
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 1.0   |
    | trace_probs     | 1.0   |
    Then the cum_infections should increase

  @pop_size__1_3_trace_probs
  @pop_size
  Scenario: pop_size -- @1.3.trace_probs
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should increase

  @pop_size__1_4_none
  @pop_size
  Scenario: pop_size -- @1.4.None
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should increase

  @pop_size__1_4_n_days
  @pop_size
  Scenario: pop_size -- @1.4.n_days
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 20    |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should increase

  @pop_size__1_4_quar_period
  @pop_size
  Scenario: pop_size -- @1.4.quar_period
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should increase

  @pop_size__1_4_pop_infected
  @pop_size
  Scenario: pop_size -- @1.4.pop_infected
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_infected    | 101   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should increase

  @pop_size__1_4_symp_prob
  @pop_size
  Scenario: pop_size -- @1.4.symp_prob
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_infected    | 100   |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should increase

  @pop_size__1_4_asymp_prob
  @pop_size
  Scenario: pop_size -- @1.4.asymp_prob
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should increase

  @pop_size__1_4_symp_quar_prob
  @pop_size
  Scenario: pop_size -- @1.4.symp_quar_prob
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should increase

  @pop_size__1_4_asymp_quar_prob
  @pop_size
  Scenario: pop_size -- @1.4.asymp_quar_prob
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 1.0   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should increase

  @pop_size__1_4_trace_probs
  @pop_size
  Scenario: pop_size -- @1.4.trace_probs
    Given we run the model with pop_size=10000
    When we run the model with pop_size=20000
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_infected    | 100   |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should increase

  @pop_infected__1_1_none
  @pop_infected
  Scenario: pop_infected -- @1.1.None
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should increase

  @pop_infected__1_1_n_days
  @pop_infected
  Scenario: pop_infected -- @1.1.n_days
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should increase

  @pop_infected__1_1_quar_period
  @pop_infected
  Scenario: pop_infected -- @1.1.quar_period
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_size        | 10000 |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should increase

  @pop_infected__1_1_pop_size
  @pop_infected
  Scenario: pop_infected -- @1.1.pop_size
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 20000 |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should increase

  @pop_infected__1_1_symp_prob
  @pop_infected
  Scenario: pop_infected -- @1.1.symp_prob
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should increase

  @pop_infected__1_1_asymp_prob
  @pop_infected
  Scenario: pop_infected -- @1.1.asymp_prob
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should increase

  @pop_infected__1_1_symp_quar_prob
  @pop_infected
  Scenario: pop_infected -- @1.1.symp_quar_prob
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_tests should increase

  @pop_infected__1_1_asymp_quar_prob
  @pop_infected
  Scenario: pop_infected -- @1.1.asymp_quar_prob
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 1.0   |
    | trace_probs     | 1.0   |
    Then the cum_tests should increase

  @pop_infected__1_1_trace_probs
  @pop_infected
  Scenario: pop_infected -- @1.1.trace_probs
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_tests should increase

  @pop_infected__1_2_none
  @pop_infected
  Scenario: pop_infected -- @1.2.None
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should increase

  @pop_infected__1_2_n_days
  @pop_infected
  Scenario: pop_infected -- @1.2.n_days
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should increase

  @pop_infected__1_2_quar_period
  @pop_infected
  Scenario: pop_infected -- @1.2.quar_period
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_size        | 10000 |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should increase

  @pop_infected__1_2_pop_size
  @pop_infected
  Scenario: pop_infected -- @1.2.pop_size
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 20000 |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should increase

  @pop_infected__1_2_symp_prob
  @pop_infected
  Scenario: pop_infected -- @1.2.symp_prob
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should increase

  @pop_infected__1_2_asymp_prob
  @pop_infected
  Scenario: pop_infected -- @1.2.asymp_prob
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should increase

  @pop_infected__1_2_symp_quar_prob
  @pop_infected
  Scenario: pop_infected -- @1.2.symp_quar_prob
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should increase

  @pop_infected__1_2_asymp_quar_prob
  @pop_infected
  Scenario: pop_infected -- @1.2.asymp_quar_prob
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 1.0   |
    | trace_probs     | 1.0   |
    Then the cum_quarantined should increase

  @pop_infected__1_2_trace_probs
  @pop_infected
  Scenario: pop_infected -- @1.2.trace_probs
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should increase

  @pop_infected__1_3_none
  @pop_infected
  Scenario: pop_infected -- @1.3.None
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should increase

  @pop_infected__1_3_n_days
  @pop_infected
  Scenario: pop_infected -- @1.3.n_days
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should increase

  @pop_infected__1_3_quar_period
  @pop_infected
  Scenario: pop_infected -- @1.3.quar_period
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_size        | 10000 |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should increase

  @pop_infected__1_3_pop_size
  @pop_infected
  Scenario: pop_infected -- @1.3.pop_size
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 20000 |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should increase

  @pop_infected__1_3_symp_prob
  @pop_infected
  Scenario: pop_infected -- @1.3.symp_prob
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should increase

  @pop_infected__1_3_asymp_prob
  @pop_infected
  Scenario: pop_infected -- @1.3.asymp_prob
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should increase

  @pop_infected__1_3_symp_quar_prob
  @pop_infected
  Scenario: pop_infected -- @1.3.symp_quar_prob
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_infections should increase

  @pop_infected__1_3_asymp_quar_prob
  @pop_infected
  Scenario: pop_infected -- @1.3.asymp_quar_prob
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 1.0   |
    | trace_probs     | 1.0   |
    Then the cum_infections should increase

  @pop_infected__1_3_trace_probs
  @pop_infected
  Scenario: pop_infected -- @1.3.trace_probs
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_infections should increase

  @pop_infected__1_4_none
  @pop_infected
  Scenario: pop_infected -- @1.4.None
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_n_days
  @pop_infected
  Scenario: pop_infected -- @1.4.n_days
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_quar_period
  @pop_infected
  Scenario: pop_infected -- @1.4.quar_period
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 14    |
    | pop_size        | 10000 |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_pop_size
  @pop_infected
  Scenario: pop_infected -- @1.4.pop_size
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 20000 |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_symp_prob
  @pop_infected
  Scenario: pop_infected -- @1.4.symp_prob
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | symp_prob       | 0.5   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_asymp_prob
  @pop_infected
  Scenario: pop_infected -- @1.4.asymp_prob
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.05  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_symp_quar_prob
  @pop_infected
  Scenario: pop_infected -- @1.4.symp_quar_prob
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 0.5   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_asymp_quar_prob
  @pop_infected
  Scenario: pop_infected -- @1.4.asymp_quar_prob
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 1.0   |
    | trace_probs     | 1.0   |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_trace_probs
  @pop_infected
  Scenario: pop_infected -- @1.4.trace_probs
    Given we run the model with pop_infected=100
    When we run the model with pop_infected=101
    And effect modifier values
    | modifier        | value |
    | n_days          | 120   |
    | quar_period     | 20    |
    | pop_size        | 10000 |
    | symp_prob       | 1.0   |
    | asymp_prob      | 0.01  |
    | symp_quar_prob  | 1.0   |
    | asymp_quar_prob | 0.5   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same
