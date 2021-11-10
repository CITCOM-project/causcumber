Feature: Compare interventions basic concrete
  Background:
    Given a simulation with parameters
    | parameter       | type  | value |
    | asymp_prob      | float | 0.0   |
    | asymp_quar_prob | float | 0.0   |
    | average_age     | int   | 20    |
    | location        | str   | Niger |
    | n_days          | int   | 60    |
    | pop_infected    | int   | 0     |
    | pop_size        | int   | 10000 |
    | quar_period     | int   | 0     |
    | symp_prob       | float | 0.0   |
    | symp_quar_prob  | float | 0.0   |
    | trace_probs     | float | 0.0   |
    And the following variables are recorded at the end of the simulation
    | variable        | type |
    | cum_deaths      | int  |
    | cum_infections  | int  |
    | cum_quarantined | int  |
    | cum_tests       | int  |

  @average_age__1_1
  @average_age
  Scenario: average_age -- @1.1
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 0     |
    | pop_size        | 10000 |
    | pop_infected    | 0     |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.0   |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.0   |
    Then the cum_quarantined should decrease

  @average_age__1_2
  @average_age
  Scenario: average_age -- @1.2
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 0     |
    | pop_size        | 10000 |
    | pop_infected    | 0     |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.0   |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.0   |
    Then the cum_infections should decrease

  @average_age__1_3
  @average_age
  Scenario: average_age -- @1.3
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 0     |
    | pop_size        | 10000 |
    | pop_infected    | 0     |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.0   |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.0   |
    Then the cum_deaths should increase

  @quar_period__1_1
  @quar_period_short
  Scenario: quar_period -- @1.1
    Given we run the model with quar_period=0
    When we run the model with quar_period=1
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | pop_size        | 10000 |
    | pop_infected    | 0     |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.0   |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.0   |
    Then the cum_tests should remain the same

  @quar_period__1_2
  @quar_period_short
  Scenario: quar_period -- @1.2
    Given we run the model with quar_period=0
    When we run the model with quar_period=1
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | pop_size        | 10000 |
    | pop_infected    | 0     |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.0   |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.0   |
    Then the cum_quarantined should decrease

  @quar_period__1_3
  @quar_period_short
  Scenario: quar_period -- @1.3
    Given we run the model with quar_period=0
    When we run the model with quar_period=1
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | pop_size        | 10000 |
    | pop_infected    | 0     |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.0   |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.0   |
    Then the cum_infections should decrease

  @quar_period__1_4
  @quar_period_short
  Scenario: quar_period -- @1.4
    Given we run the model with quar_period=0
    When we run the model with quar_period=1
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | pop_size        | 10000 |
    | pop_infected    | 0     |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.0   |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.0   |
    Then the cum_deaths should remain the same

  @symp_prob
  @symp_prob
  Scenario: symp_prob
    Given we run the model with symp_prob=0.25
    When we run the model with symp_prob=0.5
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 0     |
    | pop_size        | 10000 |
    | pop_infected    | 0     |
    | asymp_prob      | 0.25  |
    | symp_quar_prob  | 0.25  |
    | asymp_quar_prob | 0.25  |
    | trace_probs     | 0.25  |
    Then the cum_tests should decrease

  @symp_prob
  @symp_prob
  Scenario: symp_prob
    Given we run the model with symp_prob=0.25
    When we run the model with symp_prob=0.5
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 0     |
    | pop_size        | 10000 |
    | pop_infected    | 0     |
    | asymp_prob      | 0.25  |
    | symp_quar_prob  | 0.25  |
    | asymp_quar_prob | 0.25  |
    | trace_probs     | 0.25  |
    Then the cum_quarantined should decrease

  @symp_prob
  @symp_prob
  Scenario: symp_prob
    Given we run the model with symp_prob=0.25
    When we run the model with symp_prob=0.5
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 0     |
    | pop_size        | 10000 |
    | pop_infected    | 0     |
    | asymp_prob      | 0.25  |
    | symp_quar_prob  | 0.25  |
    | asymp_quar_prob | 0.25  |
    | trace_probs     | 0.25  |
    Then the cum_infections should decrease

  @symp_prob
  @symp_prob
  Scenario: symp_prob
    Given we run the model with symp_prob=0.25
    When we run the model with symp_prob=0.5
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 0     |
    | pop_size        | 10000 |
    | pop_infected    | 0     |
    | asymp_prob      | 0.25  |
    | symp_quar_prob  | 0.25  |
    | asymp_quar_prob | 0.25  |
    | trace_probs     | 0.25  |
    Then the cum_deaths should remain the same

  @asymp_prob
  @asymp_prob
  Scenario: asymp_prob
    Given we run the model with asymp_prob=0.0
    When we run the model with asymp_prob=0.5
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 0     |
    | pop_size        | 10000 |
    | pop_infected    | 0     |
    | symp_prob       | 0.0   |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.5   |
    Then the cum_tests should increase

  @asymp_prob
  @asymp_prob
  Scenario: asymp_prob
    Given we run the model with asymp_prob=0.0
    When we run the model with asymp_prob=0.5
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 0     |
    | pop_size        | 10000 |
    | pop_infected    | 0     |
    | symp_prob       | 0.0   |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should decrease

  @asymp_prob
  @asymp_prob
  Scenario: asymp_prob
    Given we run the model with asymp_prob=0.0
    When we run the model with asymp_prob=0.5
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 0     |
    | pop_size        | 10000 |
    | pop_infected    | 0     |
    | symp_prob       | 0.0   |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @asymp_prob
  @asymp_prob
  Scenario: asymp_prob
    Given we run the model with asymp_prob=0.0
    When we run the model with asymp_prob=0.5
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 0     |
    | pop_size        | 10000 |
    | pop_infected    | 0     |
    | symp_prob       | 0.0   |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @symp_quar_prob
  @symp_quar_prob
  Scenario: symp_quar_prob
    Given we run the model with symp_quar_prob=0.0
    When we run the model with symp_quar_prob=0.5
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 0     |
    | pop_size        | 10000 |
    | pop_infected    | 0     |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.0   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.5   |
    Then the cum_tests should decrease

  @symp_quar_prob
  @symp_quar_prob
  Scenario: symp_quar_prob
    Given we run the model with symp_quar_prob=0.0
    When we run the model with symp_quar_prob=0.5
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 0     |
    | pop_size        | 10000 |
    | pop_infected    | 0     |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.0   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.5   |
    Then the cum_quarantined should remain the same

  @symp_quar_prob
  @symp_quar_prob
  Scenario: symp_quar_prob
    Given we run the model with symp_quar_prob=0.0
    When we run the model with symp_quar_prob=0.5
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 0     |
    | pop_size        | 10000 |
    | pop_infected    | 0     |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.0   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.5   |
    Then the cum_infections should decrease

  @symp_quar_prob
  @symp_quar_prob
  Scenario: symp_quar_prob
    Given we run the model with symp_quar_prob=0.0
    When we run the model with symp_quar_prob=0.5
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 0     |
    | pop_size        | 10000 |
    | pop_infected    | 0     |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.0   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.5   |
    Then the cum_deaths should remain the same

  @asymp_quar_prob
  @asymp_quar_prob
  Scenario: asymp_quar_prob
    Given we run the model with asymp_quar_prob=0.0
    When we run the model with asymp_quar_prob=0.5
    And effect modifier values
    | modifier       | value |
    | n_days         | 60    |
    | quar_period    | 0     |
    | pop_size       | 10000 |
    | pop_infected   | 0     |
    | symp_prob      | 0.0   |
    | asymp_prob     | 0.0   |
    | symp_quar_prob | 0.0   |
    | trace_probs    | 0.5   |
    Then the cum_tests should decrease

  @asymp_quar_prob
  @asymp_quar_prob
  Scenario: asymp_quar_prob
    Given we run the model with asymp_quar_prob=0.0
    When we run the model with asymp_quar_prob=0.5
    And effect modifier values
    | modifier       | value |
    | n_days         | 60    |
    | quar_period    | 0     |
    | pop_size       | 10000 |
    | pop_infected   | 0     |
    | symp_prob      | 0.0   |
    | asymp_prob     | 0.0   |
    | symp_quar_prob | 0.0   |
    | trace_probs    | 0.5   |
    Then the cum_quarantined should decrease

  @asymp_quar_prob
  @asymp_quar_prob
  Scenario: asymp_quar_prob
    Given we run the model with asymp_quar_prob=0.0
    When we run the model with asymp_quar_prob=0.5
    And effect modifier values
    | modifier       | value |
    | n_days         | 60    |
    | quar_period    | 0     |
    | pop_size       | 10000 |
    | pop_infected   | 0     |
    | symp_prob      | 0.0   |
    | asymp_prob     | 0.0   |
    | symp_quar_prob | 0.0   |
    | trace_probs    | 0.5   |
    Then the cum_infections should decrease

  @asymp_quar_prob
  @asymp_quar_prob
  Scenario: asymp_quar_prob
    Given we run the model with asymp_quar_prob=0.0
    When we run the model with asymp_quar_prob=0.5
    And effect modifier values
    | modifier       | value |
    | n_days         | 60    |
    | quar_period    | 0     |
    | pop_size       | 10000 |
    | pop_infected   | 0     |
    | symp_prob      | 0.0   |
    | asymp_prob     | 0.0   |
    | symp_quar_prob | 0.0   |
    | trace_probs    | 0.5   |
    Then the cum_deaths should remain the same

  @trace_probs
  @trace_probs
  Scenario: trace_probs
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.5
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 0     |
    | pop_size        | 10000 |
    | pop_infected    | 0     |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.0   |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.0   |
    Then the cum_tests should decrease

  @trace_probs
  @trace_probs
  Scenario: trace_probs
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.5
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 0     |
    | pop_size        | 10000 |
    | pop_infected    | 0     |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.0   |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.0   |
    Then the cum_quarantined should decrease

  @trace_probs
  @trace_probs
  Scenario: trace_probs
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.5
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 0     |
    | pop_size        | 10000 |
    | pop_infected    | 0     |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.0   |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.0   |
    Then the cum_infections should decrease

  @trace_probs
  @trace_probs
  Scenario: trace_probs
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.5
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 0     |
    | pop_size        | 10000 |
    | pop_infected    | 0     |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.0   |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.0   |
    Then the cum_deaths should remain the same

  @n_days__1_1
  @n_days
  Scenario: n_days -- @1.1
    Given we run the model with n_days=60
    When we run the model with n_days=61
    And effect modifier values
    | modifier        | value |
    | quar_period     | 0     |
    | pop_size        | 10000 |
    | pop_infected    | 0     |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.0   |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.0   |
    Then the cum_tests should increase

  @n_days__1_2
  @n_days
  Scenario: n_days -- @1.2
    Given we run the model with n_days=60
    When we run the model with n_days=61
    And effect modifier values
    | modifier        | value |
    | quar_period     | 0     |
    | pop_size        | 10000 |
    | pop_infected    | 0     |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.0   |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.0   |
    Then the cum_quarantined should increase

  @n_days__1_3
  @n_days
  Scenario: n_days -- @1.3
    Given we run the model with n_days=60
    When we run the model with n_days=61
    And effect modifier values
    | modifier        | value |
    | quar_period     | 0     |
    | pop_size        | 10000 |
    | pop_infected    | 0     |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.0   |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.0   |
    Then the cum_infections should increase

  @n_days__1_4
  @n_days
  Scenario: n_days -- @1.4
    Given we run the model with n_days=60
    When we run the model with n_days=61
    And effect modifier values
    | modifier        | value |
    | quar_period     | 0     |
    | pop_size        | 10000 |
    | pop_infected    | 0     |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.0   |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.0   |
    Then the cum_deaths should increase

  @pop_size__1_1
  @pop_size
  Scenario: pop_size -- @1.1
    Given we run the model with pop_size=10000
    When we run the model with pop_size=10001
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 0     |
    | pop_infected    | 0     |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.0   |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.0   |
    Then the cum_tests should increase

  @pop_size__1_2
  @pop_size
  Scenario: pop_size -- @1.2
    Given we run the model with pop_size=10000
    When we run the model with pop_size=10001
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 0     |
    | pop_infected    | 0     |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.0   |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.0   |
    Then the cum_quarantined should increase

  @pop_size__1_3
  @pop_size
  Scenario: pop_size -- @1.3
    Given we run the model with pop_size=10000
    When we run the model with pop_size=10001
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 0     |
    | pop_infected    | 0     |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.0   |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.0   |
    Then the cum_infections should increase

  @pop_size__1_4
  @pop_size
  Scenario: pop_size -- @1.4
    Given we run the model with pop_size=10000
    When we run the model with pop_size=10001
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 0     |
    | pop_infected    | 0     |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.0   |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.0   |
    Then the cum_deaths should increase

  @pop_infected__1_1
  @pop_infected
  Scenario: pop_infected -- @1.1
    Given we run the model with pop_infected=0
    When we run the model with pop_infected=1
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 0     |
    | pop_size        | 10000 |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.0   |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.0   |
    Then the cum_tests should increase

  @pop_infected__1_2
  @pop_infected
  Scenario: pop_infected -- @1.2
    Given we run the model with pop_infected=0
    When we run the model with pop_infected=1
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 0     |
    | pop_size        | 10000 |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.0   |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.0   |
    Then the cum_quarantined should increase

  @pop_infected__1_3
  @pop_infected
  Scenario: pop_infected -- @1.3
    Given we run the model with pop_infected=0
    When we run the model with pop_infected=1
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 0     |
    | pop_size        | 10000 |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.0   |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.0   |
    Then the cum_infections should increase

  @pop_infected__1_4
  @pop_infected
  Scenario: pop_infected -- @1.4
    Given we run the model with pop_infected=0
    When we run the model with pop_infected=1
    And effect modifier values
    | modifier        | value |
    | n_days          | 60    |
    | quar_period     | 0     |
    | pop_size        | 10000 |
    | symp_prob       | 0.0   |
    | asymp_prob      | 0.0   |
    | symp_quar_prob  | 0.0   |
    | asymp_quar_prob | 0.0   |
    | trace_probs     | 0.0   |
    Then the cum_deaths should remain the same
