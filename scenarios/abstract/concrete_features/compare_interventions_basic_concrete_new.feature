Feature: Compare interventions basic concrete
  Background:
    Given a simulation with parameters
    | parameter       | type  | value |
    | asymp_prob      | float | 0.75  |
    | asymp_quar_prob | float | 0.75  |
    | average_age     | int   | 46    |
    | location        | str   | Japan |
    | n_days          | int   | 60    |
    | pop_infected    | int   | 100   |
    | pop_size        | int   | 10000 |
    | quar_period     | int   | 15    |
    | symp_prob       | float | 0.75  |
    | symp_quar_prob  | float | 0.75  |
    | trace_probs     | float | 0.75  |
    And the following variables are recorded at the end of the simulation
    | variable        | type |
    | cum_deaths      | int  |
    | cum_infections  | int  |
    | cum_quarantined | int  |
    | cum_tests       | int  |

  Scenario: Finite quar_period returns -- @1.1.1
    Given we run the model with quar_period=15
    When we run the model with quar_period=16
    And effect modifier values
    | modifier        | value |
    | symp_prob       | 0.75  |
    | asymp_prob      | 0.75  |
    | symp_quar_prob  | 0.75  |
    | asymp_quar_prob | 0.75  |
    | trace_probs     | 0.75  |
    Then the cum_quarantined should remain about the same

  Scenario: Finite quar_period returns -- @1.1.2
    Given we run the model with quar_period=15
    When we run the model with quar_period=16
    And effect modifier values
    | modifier        | value |
    | symp_prob       | 0.625 |
    | asymp_prob      | 0.75  |
    | symp_quar_prob  | 0.75  |
    | asymp_quar_prob | 0.75  |
    | trace_probs     | 0.75  |
    Then the cum_quarantined should remain about the same

  Scenario: Finite quar_period returns -- @1.1.3
    Given we run the model with quar_period=15
    When we run the model with quar_period=16
    And effect modifier values
    | modifier        | value |
    | symp_prob       | 0.625 |
    | asymp_prob      | 0.625 |
    | symp_quar_prob  | 0.75  |
    | asymp_quar_prob | 0.75  |
    | trace_probs     | 0.75  |
    Then the cum_quarantined should remain about the same

  Scenario: Finite quar_period returns -- @1.1.4
    Given we run the model with quar_period=15
    When we run the model with quar_period=16
    And effect modifier values
    | modifier        | value |
    | symp_prob       | 0.625 |
    | asymp_prob      | 0.625 |
    | symp_quar_prob  | 0.625 |
    | asymp_quar_prob | 0.75  |
    | trace_probs     | 0.75  |
    Then the cum_quarantined should remain about the same

  Scenario: Finite quar_period returns -- @1.1.5
    Given we run the model with quar_period=15
    When we run the model with quar_period=16
    And effect modifier values
    | modifier        | value |
    | symp_prob       | 0.625 |
    | asymp_prob      | 0.625 |
    | symp_quar_prob  | 0.625 |
    | asymp_quar_prob | 0.625 |
    | trace_probs     | 0.75  |
    Then the cum_quarantined should remain about the same

  Scenario: Finite quar_period returns -- @1.1.6
    Given we run the model with quar_period=15
    When we run the model with quar_period=16
    And effect modifier values
    | modifier        | value |
    | symp_prob       | 0.625 |
    | asymp_prob      | 0.625 |
    | symp_quar_prob  | 0.625 |
    | asymp_quar_prob | 0.625 |
    | trace_probs     | 0.625 |
    Then the cum_quarantined should remain about the same

  Scenario: Finite quar_period returns -- @1.2.1
    Given we run the model with quar_period=15
    When we run the model with quar_period=16
    And effect modifier values
    | modifier        | value |
    | symp_prob       | 0.75  |
    | asymp_prob      | 0.75  |
    | symp_quar_prob  | 0.75  |
    | asymp_quar_prob | 0.75  |
    | trace_probs     | 0.75  |
    Then the cum_infections should remain about the same

  Scenario: Finite quar_period returns -- @1.2.2
    Given we run the model with quar_period=15
    When we run the model with quar_period=16
    And effect modifier values
    | modifier        | value |
    | symp_prob       | 0.625 |
    | asymp_prob      | 0.75  |
    | symp_quar_prob  | 0.75  |
    | asymp_quar_prob | 0.75  |
    | trace_probs     | 0.75  |
    Then the cum_infections should remain about the same

  Scenario: Finite quar_period returns -- @1.2.3
    Given we run the model with quar_period=15
    When we run the model with quar_period=16
    And effect modifier values
    | modifier        | value |
    | symp_prob       | 0.625 |
    | asymp_prob      | 0.625 |
    | symp_quar_prob  | 0.75  |
    | asymp_quar_prob | 0.75  |
    | trace_probs     | 0.75  |
    Then the cum_infections should remain about the same

  Scenario: Finite quar_period returns -- @1.2.4
    Given we run the model with quar_period=15
    When we run the model with quar_period=16
    And effect modifier values
    | modifier        | value |
    | symp_prob       | 0.625 |
    | asymp_prob      | 0.625 |
    | symp_quar_prob  | 0.625 |
    | asymp_quar_prob | 0.75  |
    | trace_probs     | 0.75  |
    Then the cum_infections should remain about the same

  Scenario: Finite quar_period returns -- @1.2.5
    Given we run the model with quar_period=15
    When we run the model with quar_period=16
    And effect modifier values
    | modifier        | value |
    | symp_prob       | 0.625 |
    | asymp_prob      | 0.625 |
    | symp_quar_prob  | 0.625 |
    | asymp_quar_prob | 0.625 |
    | trace_probs     | 0.75  |
    Then the cum_infections should remain about the same

  Scenario: Finite quar_period returns -- @1.2.6
    Given we run the model with quar_period=15
    When we run the model with quar_period=16
    And effect modifier values
    | modifier        | value |
    | symp_prob       | 0.625 |
    | asymp_prob      | 0.625 |
    | symp_quar_prob  | 0.625 |
    | asymp_quar_prob | 0.625 |
    | trace_probs     | 0.625 |
    Then the cum_infections should remain about the same

  Scenario: Finite quar_period returns -- @1.3.1
    Given we run the model with quar_period=15
    When we run the model with quar_period=16
    And effect modifier values
    | modifier        | value |
    | symp_prob       | 0.75  |
    | asymp_prob      | 0.75  |
    | symp_quar_prob  | 0.75  |
    | asymp_quar_prob | 0.75  |
    | trace_probs     | 0.75  |
    Then the cum_deaths should remain about the same

  Scenario: Finite quar_period returns -- @1.3.2
    Given we run the model with quar_period=15
    When we run the model with quar_period=16
    And effect modifier values
    | modifier        | value |
    | symp_prob       | 0.625 |
    | asymp_prob      | 0.75  |
    | symp_quar_prob  | 0.75  |
    | asymp_quar_prob | 0.75  |
    | trace_probs     | 0.75  |
    Then the cum_deaths should remain about the same

  Scenario: Finite quar_period returns -- @1.3.3
    Given we run the model with quar_period=15
    When we run the model with quar_period=16
    And effect modifier values
    | modifier        | value |
    | symp_prob       | 0.625 |
    | asymp_prob      | 0.625 |
    | symp_quar_prob  | 0.75  |
    | asymp_quar_prob | 0.75  |
    | trace_probs     | 0.75  |
    Then the cum_deaths should remain about the same

  Scenario: Finite quar_period returns -- @1.3.4
    Given we run the model with quar_period=15
    When we run the model with quar_period=16
    And effect modifier values
    | modifier        | value |
    | symp_prob       | 0.625 |
    | asymp_prob      | 0.625 |
    | symp_quar_prob  | 0.625 |
    | asymp_quar_prob | 0.75  |
    | trace_probs     | 0.75  |
    Then the cum_deaths should remain about the same

  Scenario: Finite quar_period returns -- @1.3.5
    Given we run the model with quar_period=15
    When we run the model with quar_period=16
    And effect modifier values
    | modifier        | value |
    | symp_prob       | 0.625 |
    | asymp_prob      | 0.625 |
    | symp_quar_prob  | 0.625 |
    | asymp_quar_prob | 0.625 |
    | trace_probs     | 0.75  |
    Then the cum_deaths should remain about the same

  Scenario: Finite quar_period returns -- @1.3.6
    Given we run the model with quar_period=15
    When we run the model with quar_period=16
    And effect modifier values
    | modifier        | value |
    | symp_prob       | 0.625 |
    | asymp_prob      | 0.625 |
    | symp_quar_prob  | 0.625 |
    | asymp_quar_prob | 0.625 |
    | trace_probs     | 0.625 |
    Then the cum_deaths should remain about the same
