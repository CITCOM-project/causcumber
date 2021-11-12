Feature: Compare interventions basic concrete
  Background:
    Given a simulation with parameters
    | parameter       | type  | value               |
    | asymp_prob      | float | 0.5320606162934023  |
    | asymp_quar_prob | float | 0.16550077992524106 |
    | average_age     | int   | 20                  |
    | location        | str   | Niger               |
    | n_days          | int   | 80                  |
    | pop_infected    | int   | 400                 |
    | pop_size        | int   | 10000               |
    | quar_period     | int   | 11                  |
    | symp_prob       | float | 0.3946267859089032  |
    | symp_quar_prob  | float | 0.32012755679683896 |
    | trace_probs     | float | 0.09610948155767196 |
    And the following variables are recorded at the end of the simulation
    | variable        | type |
    | cum_deaths      | int  |
    | cum_infections  | int  |
    | cum_quarantined | int  |
    | cum_tests       | int  |

  @average_age__1_1_0
  @average_age
  Scenario: average_age -- @1.1_0
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @average_age__1_1_1
  @average_age
  Scenario: average_age -- @1.1_1
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @average_age__1_1_2
  @average_age
  Scenario: average_age -- @1.1_2
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @average_age__1_1_3
  @average_age
  Scenario: average_age -- @1.1_3
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_quarantined should decrease

  @average_age__1_1_4
  @average_age
  Scenario: average_age -- @1.1_4
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_quarantined should decrease

  @average_age__1_1_5
  @average_age
  Scenario: average_age -- @1.1_5
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_quarantined should decrease

  @average_age__1_1_6
  @average_age
  Scenario: average_age -- @1.1_6
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @average_age__1_1_7
  @average_age
  Scenario: average_age -- @1.1_7
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @average_age__1_1_8
  @average_age
  Scenario: average_age -- @1.1_8
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @average_age__1_1_9
  @average_age
  Scenario: average_age -- @1.1_9
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @average_age__1_1_10
  @average_age
  Scenario: average_age -- @1.1_10
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @average_age__1_1_11
  @average_age
  Scenario: average_age -- @1.1_11
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_quarantined should decrease

  @average_age__1_1_12
  @average_age
  Scenario: average_age -- @1.1_12
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @average_age__1_1_13
  @average_age
  Scenario: average_age -- @1.1_13
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @average_age__1_1_14
  @average_age
  Scenario: average_age -- @1.1_14
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @average_age__1_1_15
  @average_age
  Scenario: average_age -- @1.1_15
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @average_age__1_1_16
  @average_age
  Scenario: average_age -- @1.1_16
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_quarantined should decrease

  @average_age__1_1_17
  @average_age
  Scenario: average_age -- @1.1_17
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @average_age__1_1_18
  @average_age
  Scenario: average_age -- @1.1_18
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_quarantined should decrease

  @average_age__1_1_19
  @average_age
  Scenario: average_age -- @1.1_19
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @average_age__1_1_20
  @average_age
  Scenario: average_age -- @1.1_20
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @average_age__1_1_21
  @average_age
  Scenario: average_age -- @1.1_21
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @average_age__1_1_22
  @average_age
  Scenario: average_age -- @1.1_22
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @average_age__1_1_23
  @average_age
  Scenario: average_age -- @1.1_23
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @average_age__1_1_24
  @average_age
  Scenario: average_age -- @1.1_24
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @average_age__1_1_25
  @average_age
  Scenario: average_age -- @1.1_25
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @average_age__1_1_26
  @average_age
  Scenario: average_age -- @1.1_26
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_quarantined should decrease

  @average_age__1_1_27
  @average_age
  Scenario: average_age -- @1.1_27
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @average_age__1_1_28
  @average_age
  Scenario: average_age -- @1.1_28
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_quarantined should decrease

  @average_age__1_1_29
  @average_age
  Scenario: average_age -- @1.1_29
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @average_age__1_1_30
  @average_age
  Scenario: average_age -- @1.1_30
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @average_age__1_1_31
  @average_age
  Scenario: average_age -- @1.1_31
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @average_age__1_1_32
  @average_age
  Scenario: average_age -- @1.1_32
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @average_age__1_1_33
  @average_age
  Scenario: average_age -- @1.1_33
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @average_age__1_2_0
  @average_age
  Scenario: average_age -- @1.2_0
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @average_age__1_2_1
  @average_age
  Scenario: average_age -- @1.2_1
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @average_age__1_2_2
  @average_age
  Scenario: average_age -- @1.2_2
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @average_age__1_2_3
  @average_age
  Scenario: average_age -- @1.2_3
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_infections should decrease

  @average_age__1_2_4
  @average_age
  Scenario: average_age -- @1.2_4
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_infections should decrease

  @average_age__1_2_5
  @average_age
  Scenario: average_age -- @1.2_5
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should decrease

  @average_age__1_2_6
  @average_age
  Scenario: average_age -- @1.2_6
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @average_age__1_2_7
  @average_age
  Scenario: average_age -- @1.2_7
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @average_age__1_2_8
  @average_age
  Scenario: average_age -- @1.2_8
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @average_age__1_2_9
  @average_age
  Scenario: average_age -- @1.2_9
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @average_age__1_2_10
  @average_age
  Scenario: average_age -- @1.2_10
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @average_age__1_2_11
  @average_age
  Scenario: average_age -- @1.2_11
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @average_age__1_2_12
  @average_age
  Scenario: average_age -- @1.2_12
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should decrease

  @average_age__1_2_13
  @average_age
  Scenario: average_age -- @1.2_13
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @average_age__1_2_14
  @average_age
  Scenario: average_age -- @1.2_14
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @average_age__1_2_15
  @average_age
  Scenario: average_age -- @1.2_15
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @average_age__1_2_16
  @average_age
  Scenario: average_age -- @1.2_16
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @average_age__1_2_17
  @average_age
  Scenario: average_age -- @1.2_17
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @average_age__1_2_18
  @average_age
  Scenario: average_age -- @1.2_18
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should decrease

  @average_age__1_2_19
  @average_age
  Scenario: average_age -- @1.2_19
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @average_age__1_2_20
  @average_age
  Scenario: average_age -- @1.2_20
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @average_age__1_2_21
  @average_age
  Scenario: average_age -- @1.2_21
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @average_age__1_2_22
  @average_age
  Scenario: average_age -- @1.2_22
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @average_age__1_2_23
  @average_age
  Scenario: average_age -- @1.2_23
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @average_age__1_2_24
  @average_age
  Scenario: average_age -- @1.2_24
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @average_age__1_2_25
  @average_age
  Scenario: average_age -- @1.2_25
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_infections should decrease

  @average_age__1_2_26
  @average_age
  Scenario: average_age -- @1.2_26
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_infections should decrease

  @average_age__1_2_27
  @average_age
  Scenario: average_age -- @1.2_27
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_infections should decrease

  @average_age__1_2_28
  @average_age
  Scenario: average_age -- @1.2_28
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @average_age__1_2_29
  @average_age
  Scenario: average_age -- @1.2_29
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @average_age__1_2_30
  @average_age
  Scenario: average_age -- @1.2_30
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_infections should decrease

  @average_age__1_2_31
  @average_age
  Scenario: average_age -- @1.2_31
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_infections should decrease

  @average_age__1_2_32
  @average_age
  Scenario: average_age -- @1.2_32
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @average_age__1_2_33
  @average_age
  Scenario: average_age -- @1.2_33
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @average_age__1_3_0
  @average_age
  Scenario: average_age -- @1.3_0
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @average_age__1_3_1
  @average_age
  Scenario: average_age -- @1.3_1
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @average_age__1_3_2
  @average_age
  Scenario: average_age -- @1.3_2
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_deaths should increase

  @average_age__1_3_3
  @average_age
  Scenario: average_age -- @1.3_3
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @average_age__1_3_4
  @average_age
  Scenario: average_age -- @1.3_4
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @average_age__1_3_5
  @average_age
  Scenario: average_age -- @1.3_5
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_deaths should increase

  @average_age__1_3_6
  @average_age
  Scenario: average_age -- @1.3_6
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_deaths should increase

  @average_age__1_3_7
  @average_age
  Scenario: average_age -- @1.3_7
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @average_age__1_3_8
  @average_age
  Scenario: average_age -- @1.3_8
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @average_age__1_3_9
  @average_age
  Scenario: average_age -- @1.3_9
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @average_age__1_3_10
  @average_age
  Scenario: average_age -- @1.3_10
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @average_age__1_3_11
  @average_age
  Scenario: average_age -- @1.3_11
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @average_age__1_3_12
  @average_age
  Scenario: average_age -- @1.3_12
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_deaths should increase

  @average_age__1_3_13
  @average_age
  Scenario: average_age -- @1.3_13
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @average_age__1_3_14
  @average_age
  Scenario: average_age -- @1.3_14
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @average_age__1_3_15
  @average_age
  Scenario: average_age -- @1.3_15
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @average_age__1_3_16
  @average_age
  Scenario: average_age -- @1.3_16
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @average_age__1_3_17
  @average_age
  Scenario: average_age -- @1.3_17
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @average_age__1_3_18
  @average_age
  Scenario: average_age -- @1.3_18
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @average_age__1_3_19
  @average_age
  Scenario: average_age -- @1.3_19
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_deaths should increase

  @average_age__1_3_20
  @average_age
  Scenario: average_age -- @1.3_20
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @average_age__1_3_21
  @average_age
  Scenario: average_age -- @1.3_21
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @average_age__1_3_22
  @average_age
  Scenario: average_age -- @1.3_22
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @average_age__1_3_23
  @average_age
  Scenario: average_age -- @1.3_23
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @average_age__1_3_24
  @average_age
  Scenario: average_age -- @1.3_24
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @average_age__1_3_25
  @average_age
  Scenario: average_age -- @1.3_25
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @average_age__1_3_26
  @average_age
  Scenario: average_age -- @1.3_26
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_deaths should increase

  @average_age__1_3_27
  @average_age
  Scenario: average_age -- @1.3_27
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @average_age__1_3_28
  @average_age
  Scenario: average_age -- @1.3_28
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_deaths should increase

  @average_age__1_3_29
  @average_age
  Scenario: average_age -- @1.3_29
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @average_age__1_3_30
  @average_age
  Scenario: average_age -- @1.3_30
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @average_age__1_3_31
  @average_age
  Scenario: average_age -- @1.3_31
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @average_age__1_3_32
  @average_age
  Scenario: average_age -- @1.3_32
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_deaths should increase

  @average_age__1_3_33
  @average_age
  Scenario: average_age -- @1.3_33
    Given we run the model with average_age=20
    When we run the model with average_age=46
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_deaths should increase

  @quar_period__1_1_0
  @quar_period_short
  Scenario: quar_period -- @1.1_0
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should remain the same

  @quar_period__1_1_1
  @quar_period_short
  Scenario: quar_period -- @1.1_1
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_tests should remain the same

  @quar_period__1_1_2
  @quar_period_short
  Scenario: quar_period -- @1.1_2
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_tests should remain the same

  @quar_period__1_1_3
  @quar_period_short
  Scenario: quar_period -- @1.1_3
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_tests should remain the same

  @quar_period__1_1_4
  @quar_period_short
  Scenario: quar_period -- @1.1_4
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should remain the same

  @quar_period__1_1_5
  @quar_period_short
  Scenario: quar_period -- @1.1_5
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should remain the same

  @quar_period__1_1_6
  @quar_period_short
  Scenario: quar_period -- @1.1_6
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_tests should remain the same

  @quar_period__1_1_7
  @quar_period_short
  Scenario: quar_period -- @1.1_7
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should remain the same

  @quar_period__1_1_8
  @quar_period_short
  Scenario: quar_period -- @1.1_8
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_tests should remain the same

  @quar_period__1_1_9
  @quar_period_short
  Scenario: quar_period -- @1.1_9
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should remain the same

  @quar_period__1_1_10
  @quar_period_short
  Scenario: quar_period -- @1.1_10
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_tests should remain the same

  @quar_period__1_1_11
  @quar_period_short
  Scenario: quar_period -- @1.1_11
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 17019               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should remain the same

  @quar_period__1_1_12
  @quar_period_short
  Scenario: quar_period -- @1.1_12
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should remain the same

  @quar_period__1_1_13
  @quar_period_short
  Scenario: quar_period -- @1.1_13
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should remain the same

  @quar_period__1_1_14
  @quar_period_short
  Scenario: quar_period -- @1.1_14
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should remain the same

  @quar_period__1_1_15
  @quar_period_short
  Scenario: quar_period -- @1.1_15
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should remain the same

  @quar_period__1_1_16
  @quar_period_short
  Scenario: quar_period -- @1.1_16
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should remain the same

  @quar_period__1_1_17
  @quar_period_short
  Scenario: quar_period -- @1.1_17
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should remain the same

  @quar_period__1_1_18
  @quar_period_short
  Scenario: quar_period -- @1.1_18
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should remain the same

  @quar_period__1_1_19
  @quar_period_short
  Scenario: quar_period -- @1.1_19
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should remain the same

  @quar_period__1_1_20
  @quar_period_short
  Scenario: quar_period -- @1.1_20
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should remain the same

  @quar_period__1_1_21
  @quar_period_short
  Scenario: quar_period -- @1.1_21
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 17019               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should remain the same

  @quar_period__1_1_22
  @quar_period_short
  Scenario: quar_period -- @1.1_22
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 13013               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_tests should remain the same

  @quar_period__1_1_23
  @quar_period_short
  Scenario: quar_period -- @1.1_23
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_tests should remain the same

  @quar_period__1_1_24
  @quar_period_short
  Scenario: quar_period -- @1.1_24
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_tests should remain the same

  @quar_period__1_1_25
  @quar_period_short
  Scenario: quar_period -- @1.1_25
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 13013               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should remain the same

  @quar_period__1_1_26
  @quar_period_short
  Scenario: quar_period -- @1.1_26
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 13013               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should remain the same

  @quar_period__1_1_27
  @quar_period_short
  Scenario: quar_period -- @1.1_27
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 13013               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_tests should remain the same

  @quar_period__1_1_28
  @quar_period_short
  Scenario: quar_period -- @1.1_28
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 13013               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should remain the same

  @quar_period__1_1_29
  @quar_period_short
  Scenario: quar_period -- @1.1_29
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should remain the same

  @quar_period__1_2_0
  @quar_period_short
  Scenario: quar_period -- @1.2_0
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @quar_period__1_2_1
  @quar_period_short
  Scenario: quar_period -- @1.2_1
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @quar_period__1_2_2
  @quar_period_short
  Scenario: quar_period -- @1.2_2
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @quar_period__1_2_3
  @quar_period_short
  Scenario: quar_period -- @1.2_3
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @quar_period__1_2_4
  @quar_period_short
  Scenario: quar_period -- @1.2_4
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @quar_period__1_2_5
  @quar_period_short
  Scenario: quar_period -- @1.2_5
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @quar_period__1_2_6
  @quar_period_short
  Scenario: quar_period -- @1.2_6
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_quarantined should decrease

  @quar_period__1_2_7
  @quar_period_short
  Scenario: quar_period -- @1.2_7
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @quar_period__1_2_8
  @quar_period_short
  Scenario: quar_period -- @1.2_8
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @quar_period__1_2_9
  @quar_period_short
  Scenario: quar_period -- @1.2_9
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_quarantined should decrease

  @quar_period__1_2_10
  @quar_period_short
  Scenario: quar_period -- @1.2_10
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @quar_period__1_2_11
  @quar_period_short
  Scenario: quar_period -- @1.2_11
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @quar_period__1_2_12
  @quar_period_short
  Scenario: quar_period -- @1.2_12
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @quar_period__1_2_13
  @quar_period_short
  Scenario: quar_period -- @1.2_13
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @quar_period__1_2_14
  @quar_period_short
  Scenario: quar_period -- @1.2_14
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @quar_period__1_2_15
  @quar_period_short
  Scenario: quar_period -- @1.2_15
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @quar_period__1_2_16
  @quar_period_short
  Scenario: quar_period -- @1.2_16
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @quar_period__1_2_17
  @quar_period_short
  Scenario: quar_period -- @1.2_17
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @quar_period__1_2_18
  @quar_period_short
  Scenario: quar_period -- @1.2_18
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @quar_period__1_2_19
  @quar_period_short
  Scenario: quar_period -- @1.2_19
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @quar_period__1_2_20
  @quar_period_short
  Scenario: quar_period -- @1.2_20
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @quar_period__1_2_21
  @quar_period_short
  Scenario: quar_period -- @1.2_21
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_quarantined should decrease

  @quar_period__1_2_22
  @quar_period_short
  Scenario: quar_period -- @1.2_22
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 13013               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @quar_period__1_2_23
  @quar_period_short
  Scenario: quar_period -- @1.2_23
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @quar_period__1_2_24
  @quar_period_short
  Scenario: quar_period -- @1.2_24
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @quar_period__1_2_25
  @quar_period_short
  Scenario: quar_period -- @1.2_25
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 13013               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @quar_period__1_2_26
  @quar_period_short
  Scenario: quar_period -- @1.2_26
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @quar_period__1_2_27
  @quar_period_short
  Scenario: quar_period -- @1.2_27
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | pop_size        | 13013               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_quarantined should decrease

  @quar_period__1_2_28
  @quar_period_short
  Scenario: quar_period -- @1.2_28
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @quar_period__1_2_29
  @quar_period_short
  Scenario: quar_period -- @1.2_29
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @quar_period__1_3_0
  @quar_period_short
  Scenario: quar_period -- @1.3_0
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @quar_period__1_3_1
  @quar_period_short
  Scenario: quar_period -- @1.3_1
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @quar_period__1_3_2
  @quar_period_short
  Scenario: quar_period -- @1.3_2
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 13013               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should decrease

  @quar_period__1_3_3
  @quar_period_short
  Scenario: quar_period -- @1.3_3
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @quar_period__1_3_4
  @quar_period_short
  Scenario: quar_period -- @1.3_4
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @quar_period__1_3_5
  @quar_period_short
  Scenario: quar_period -- @1.3_5
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @quar_period__1_3_6
  @quar_period_short
  Scenario: quar_period -- @1.3_6
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @quar_period__1_3_7
  @quar_period_short
  Scenario: quar_period -- @1.3_7
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @quar_period__1_3_8
  @quar_period_short
  Scenario: quar_period -- @1.3_8
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @quar_period__1_3_9
  @quar_period_short
  Scenario: quar_period -- @1.3_9
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should decrease

  @quar_period__1_3_10
  @quar_period_short
  Scenario: quar_period -- @1.3_10
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should decrease

  @quar_period__1_3_11
  @quar_period_short
  Scenario: quar_period -- @1.3_11
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @quar_period__1_3_12
  @quar_period_short
  Scenario: quar_period -- @1.3_12
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @quar_period__1_3_13
  @quar_period_short
  Scenario: quar_period -- @1.3_13
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @quar_period__1_3_14
  @quar_period_short
  Scenario: quar_period -- @1.3_14
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @quar_period__1_3_15
  @quar_period_short
  Scenario: quar_period -- @1.3_15
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @quar_period__1_3_16
  @quar_period_short
  Scenario: quar_period -- @1.3_16
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @quar_period__1_3_17
  @quar_period_short
  Scenario: quar_period -- @1.3_17
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @quar_period__1_3_18
  @quar_period_short
  Scenario: quar_period -- @1.3_18
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @quar_period__1_3_19
  @quar_period_short
  Scenario: quar_period -- @1.3_19
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @quar_period__1_3_20
  @quar_period_short
  Scenario: quar_period -- @1.3_20
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @quar_period__1_3_21
  @quar_period_short
  Scenario: quar_period -- @1.3_21
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @quar_period__1_3_22
  @quar_period_short
  Scenario: quar_period -- @1.3_22
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 13013               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @quar_period__1_3_23
  @quar_period_short
  Scenario: quar_period -- @1.3_23
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @quar_period__1_3_24
  @quar_period_short
  Scenario: quar_period -- @1.3_24
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @quar_period__1_3_25
  @quar_period_short
  Scenario: quar_period -- @1.3_25
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 13013               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @quar_period__1_3_26
  @quar_period_short
  Scenario: quar_period -- @1.3_26
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 13013               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @quar_period__1_3_27
  @quar_period_short
  Scenario: quar_period -- @1.3_27
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | pop_size        | 13013               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should decrease

  @quar_period__1_3_28
  @quar_period_short
  Scenario: quar_period -- @1.3_28
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @quar_period__1_3_29
  @quar_period_short
  Scenario: quar_period -- @1.3_29
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_infections should decrease

  @quar_period__1_4_0
  @quar_period_short
  Scenario: quar_period -- @1.4_0
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @quar_period__1_4_1
  @quar_period_short
  Scenario: quar_period -- @1.4_1
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_deaths should remain the same

  @quar_period__1_4_2
  @quar_period_short
  Scenario: quar_period -- @1.4_2
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_deaths should remain the same

  @quar_period__1_4_3
  @quar_period_short
  Scenario: quar_period -- @1.4_3
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_deaths should remain the same

  @quar_period__1_4_4
  @quar_period_short
  Scenario: quar_period -- @1.4_4
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @quar_period__1_4_5
  @quar_period_short
  Scenario: quar_period -- @1.4_5
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @quar_period__1_4_6
  @quar_period_short
  Scenario: quar_period -- @1.4_6
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_deaths should remain the same

  @quar_period__1_4_7
  @quar_period_short
  Scenario: quar_period -- @1.4_7
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @quar_period__1_4_8
  @quar_period_short
  Scenario: quar_period -- @1.4_8
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @quar_period__1_4_9
  @quar_period_short
  Scenario: quar_period -- @1.4_9
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @quar_period__1_4_10
  @quar_period_short
  Scenario: quar_period -- @1.4_10
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_deaths should remain the same

  @quar_period__1_4_11
  @quar_period_short
  Scenario: quar_period -- @1.4_11
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @quar_period__1_4_12
  @quar_period_short
  Scenario: quar_period -- @1.4_12
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @quar_period__1_4_13
  @quar_period_short
  Scenario: quar_period -- @1.4_13
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @quar_period__1_4_14
  @quar_period_short
  Scenario: quar_period -- @1.4_14
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @quar_period__1_4_15
  @quar_period_short
  Scenario: quar_period -- @1.4_15
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @quar_period__1_4_16
  @quar_period_short
  Scenario: quar_period -- @1.4_16
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @quar_period__1_4_17
  @quar_period_short
  Scenario: quar_period -- @1.4_17
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @quar_period__1_4_18
  @quar_period_short
  Scenario: quar_period -- @1.4_18
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @quar_period__1_4_19
  @quar_period_short
  Scenario: quar_period -- @1.4_19
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @quar_period__1_4_20
  @quar_period_short
  Scenario: quar_period -- @1.4_20
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @quar_period__1_4_21
  @quar_period_short
  Scenario: quar_period -- @1.4_21
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 17019               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_deaths should remain the same

  @quar_period__1_4_22
  @quar_period_short
  Scenario: quar_period -- @1.4_22
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 13013               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_deaths should remain the same

  @quar_period__1_4_23
  @quar_period_short
  Scenario: quar_period -- @1.4_23
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @quar_period__1_4_24
  @quar_period_short
  Scenario: quar_period -- @1.4_24
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @quar_period__1_4_25
  @quar_period_short
  Scenario: quar_period -- @1.4_25
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 13013               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @quar_period__1_4_26
  @quar_period_short
  Scenario: quar_period -- @1.4_26
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 13013               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @quar_period__1_4_27
  @quar_period_short
  Scenario: quar_period -- @1.4_27
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | pop_size        | 13013               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @quar_period__1_4_28
  @quar_period_short
  Scenario: quar_period -- @1.4_28
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @quar_period__1_4_29
  @quar_period_short
  Scenario: quar_period -- @1.4_29
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_prob_0
  @symp_prob
  Scenario: symp_prob_0
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_prob_1
  @symp_prob
  Scenario: symp_prob_1
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_prob_2
  @symp_prob
  Scenario: symp_prob_2
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_prob_3
  @symp_prob
  Scenario: symp_prob_3
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_tests should decrease

  @symp_prob_4
  @symp_prob
  Scenario: symp_prob_4
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_prob_5
  @symp_prob
  Scenario: symp_prob_5
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_tests should decrease

  @symp_prob_6
  @symp_prob
  Scenario: symp_prob_6
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_tests should decrease

  @symp_prob_7
  @symp_prob
  Scenario: symp_prob_7
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_prob_8
  @symp_prob
  Scenario: symp_prob_8
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_tests should decrease

  @symp_prob_9
  @symp_prob
  Scenario: symp_prob_9
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_prob_10
  @symp_prob
  Scenario: symp_prob_10
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.3946267859089032
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_prob_11
  @symp_prob
  Scenario: symp_prob_11
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_prob_12
  @symp_prob
  Scenario: symp_prob_12
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_prob_13
  @symp_prob
  Scenario: symp_prob_13
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_prob_14
  @symp_prob
  Scenario: symp_prob_14
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_prob_15
  @symp_prob
  Scenario: symp_prob_15
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_prob_16
  @symp_prob
  Scenario: symp_prob_16
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_prob_17
  @symp_prob
  Scenario: symp_prob_17
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.3946267859089032
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_prob_18
  @symp_prob
  Scenario: symp_prob_18
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value              |
    | n_days          | 80                 |
    | quar_period     | 11                 |
    | pop_size        | 10000              |
    | pop_infected    | 217                |
    | asymp_prob      | 0.5320606162934023 |
    | symp_quar_prob  | 0.0456075960115124 |
    | asymp_quar_prob | 0.5362647235083882 |
    | trace_probs     | 0.4179307148516287 |
    Then the cum_tests should decrease

  @symp_prob_19
  @symp_prob
  Scenario: symp_prob_19
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.3946267859089032
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 295                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_prob_20
  @symp_prob
  Scenario: symp_prob_20
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.3946267859089032
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_prob_21
  @symp_prob
  Scenario: symp_prob_21
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_tests should decrease

  @symp_prob_22
  @symp_prob
  Scenario: symp_prob_22
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_prob_23
  @symp_prob
  Scenario: symp_prob_23
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.3946267859089032
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_tests should decrease

  @symp_prob_24
  @symp_prob
  Scenario: symp_prob_24
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_tests should decrease

  @symp_prob_25
  @symp_prob
  Scenario: symp_prob_25
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_prob_26
  @symp_prob
  Scenario: symp_prob_26
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_prob_27
  @symp_prob
  Scenario: symp_prob_27
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_prob_28
  @symp_prob
  Scenario: symp_prob_28
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.3946267859089032
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_prob_29
  @symp_prob
  Scenario: symp_prob_29
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.3946267859089032
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_prob_30
  @symp_prob
  Scenario: symp_prob_30
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_tests should decrease

  @symp_prob_31
  @symp_prob
  Scenario: symp_prob_31
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_prob_32
  @symp_prob
  Scenario: symp_prob_32
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_tests should decrease

  @symp_prob_0
  @symp_prob
  Scenario: symp_prob_0
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @symp_prob_1
  @symp_prob
  Scenario: symp_prob_1
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_quarantined should decrease

  @symp_prob_2
  @symp_prob
  Scenario: symp_prob_2
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @symp_prob_3
  @symp_prob
  Scenario: symp_prob_3
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @symp_prob_4
  @symp_prob
  Scenario: symp_prob_4
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @symp_prob_5
  @symp_prob
  Scenario: symp_prob_5
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @symp_prob_6
  @symp_prob
  Scenario: symp_prob_6
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @symp_prob_7
  @symp_prob
  Scenario: symp_prob_7
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @symp_prob_8
  @symp_prob
  Scenario: symp_prob_8
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @symp_prob_9
  @symp_prob
  Scenario: symp_prob_9
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_quarantined should decrease

  @symp_prob_10
  @symp_prob
  Scenario: symp_prob_10
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.3946267859089032
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_quarantined should decrease

  @symp_prob_11
  @symp_prob
  Scenario: symp_prob_11
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @symp_prob_12
  @symp_prob
  Scenario: symp_prob_12
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @symp_prob_13
  @symp_prob
  Scenario: symp_prob_13
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @symp_prob_14
  @symp_prob
  Scenario: symp_prob_14
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @symp_prob_15
  @symp_prob
  Scenario: symp_prob_15
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 295                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @symp_prob_16
  @symp_prob
  Scenario: symp_prob_16
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_quarantined should decrease

  @symp_prob_17
  @symp_prob
  Scenario: symp_prob_17
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.3946267859089032
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @symp_prob_18
  @symp_prob
  Scenario: symp_prob_18
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value              |
    | n_days          | 80                 |
    | quar_period     | 11                 |
    | pop_size        | 10000              |
    | pop_infected    | 217                |
    | asymp_prob      | 0.5320606162934023 |
    | symp_quar_prob  | 0.0456075960115124 |
    | asymp_quar_prob | 0.5362647235083882 |
    | trace_probs     | 0.4179307148516287 |
    Then the cum_quarantined should decrease

  @symp_prob_19
  @symp_prob
  Scenario: symp_prob_19
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.3946267859089032
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_size        | 17019               |
    | pop_infected    | 295                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @symp_prob_20
  @symp_prob
  Scenario: symp_prob_20
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.3946267859089032
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @symp_prob_21
  @symp_prob
  Scenario: symp_prob_21
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_quarantined should decrease

  @symp_prob_22
  @symp_prob
  Scenario: symp_prob_22
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @symp_prob_23
  @symp_prob
  Scenario: symp_prob_23
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.3946267859089032
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @symp_prob_24
  @symp_prob
  Scenario: symp_prob_24
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @symp_prob_25
  @symp_prob
  Scenario: symp_prob_25
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_quarantined should decrease

  @symp_prob_26
  @symp_prob
  Scenario: symp_prob_26
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @symp_prob_27
  @symp_prob
  Scenario: symp_prob_27
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @symp_prob_28
  @symp_prob
  Scenario: symp_prob_28
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.3946267859089032
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_quarantined should decrease

  @symp_prob_29
  @symp_prob
  Scenario: symp_prob_29
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.3946267859089032
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @symp_prob_30
  @symp_prob
  Scenario: symp_prob_30
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @symp_prob_31
  @symp_prob
  Scenario: symp_prob_31
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @symp_prob_32
  @symp_prob
  Scenario: symp_prob_32
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_quarantined should decrease

  @symp_prob_0
  @symp_prob
  Scenario: symp_prob_0
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_prob_1
  @symp_prob
  Scenario: symp_prob_1
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_prob_2
  @symp_prob
  Scenario: symp_prob_2
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_prob_3
  @symp_prob
  Scenario: symp_prob_3
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_infections should decrease

  @symp_prob_4
  @symp_prob
  Scenario: symp_prob_4
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_prob_5
  @symp_prob
  Scenario: symp_prob_5
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_infections should decrease

  @symp_prob_6
  @symp_prob
  Scenario: symp_prob_6
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should decrease

  @symp_prob_7
  @symp_prob
  Scenario: symp_prob_7
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_prob_8
  @symp_prob
  Scenario: symp_prob_8
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_prob_9
  @symp_prob
  Scenario: symp_prob_9
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should decrease

  @symp_prob_10
  @symp_prob
  Scenario: symp_prob_10
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.3946267859089032
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should decrease

  @symp_prob_11
  @symp_prob
  Scenario: symp_prob_11
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_prob_12
  @symp_prob
  Scenario: symp_prob_12
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_prob_13
  @symp_prob
  Scenario: symp_prob_13
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_prob_14
  @symp_prob
  Scenario: symp_prob_14
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_prob_15
  @symp_prob
  Scenario: symp_prob_15
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_prob_16
  @symp_prob
  Scenario: symp_prob_16
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_prob_17
  @symp_prob
  Scenario: symp_prob_17
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.3946267859089032
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_prob_18
  @symp_prob
  Scenario: symp_prob_18
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_prob_19
  @symp_prob
  Scenario: symp_prob_19
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.3946267859089032
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_size        | 17019               |
    | pop_infected    | 295                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_prob_20
  @symp_prob
  Scenario: symp_prob_20
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.3946267859089032
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_prob_21
  @symp_prob
  Scenario: symp_prob_21
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_prob_22
  @symp_prob
  Scenario: symp_prob_22
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_prob_23
  @symp_prob
  Scenario: symp_prob_23
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.3946267859089032
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_prob_24
  @symp_prob
  Scenario: symp_prob_24
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_infections should decrease

  @symp_prob_25
  @symp_prob
  Scenario: symp_prob_25
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_infections should decrease

  @symp_prob_26
  @symp_prob
  Scenario: symp_prob_26
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_prob_27
  @symp_prob
  Scenario: symp_prob_27
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_prob_28
  @symp_prob
  Scenario: symp_prob_28
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.3946267859089032
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_prob_29
  @symp_prob
  Scenario: symp_prob_29
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.3946267859089032
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_prob_30
  @symp_prob
  Scenario: symp_prob_30
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_prob_31
  @symp_prob
  Scenario: symp_prob_31
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should decrease

  @symp_prob_32
  @symp_prob
  Scenario: symp_prob_32
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should decrease

  @symp_prob_0
  @symp_prob
  Scenario: symp_prob_0
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_prob_1
  @symp_prob
  Scenario: symp_prob_1
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_prob_2
  @symp_prob
  Scenario: symp_prob_2
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_prob_3
  @symp_prob
  Scenario: symp_prob_3
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_prob_4
  @symp_prob
  Scenario: symp_prob_4
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_prob_5
  @symp_prob
  Scenario: symp_prob_5
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_prob_6
  @symp_prob
  Scenario: symp_prob_6
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_deaths should remain the same

  @symp_prob_7
  @symp_prob
  Scenario: symp_prob_7
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_prob_8
  @symp_prob
  Scenario: symp_prob_8
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_prob_9
  @symp_prob
  Scenario: symp_prob_9
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_deaths should remain the same

  @symp_prob_10
  @symp_prob
  Scenario: symp_prob_10
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.3946267859089032
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_deaths should remain the same

  @symp_prob_11
  @symp_prob
  Scenario: symp_prob_11
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 13                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_prob_12
  @symp_prob
  Scenario: symp_prob_12
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_prob_13
  @symp_prob
  Scenario: symp_prob_13
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_prob_14
  @symp_prob
  Scenario: symp_prob_14
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_prob_15
  @symp_prob
  Scenario: symp_prob_15
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_prob_16
  @symp_prob
  Scenario: symp_prob_16
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_prob_17
  @symp_prob
  Scenario: symp_prob_17
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.3946267859089032
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_prob_18
  @symp_prob
  Scenario: symp_prob_18
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_prob_19
  @symp_prob
  Scenario: symp_prob_19
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.3946267859089032
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_size        | 17019               |
    | pop_infected    | 295                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_prob_20
  @symp_prob
  Scenario: symp_prob_20
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.3946267859089032
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_prob_21
  @symp_prob
  Scenario: symp_prob_21
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_prob_22
  @symp_prob
  Scenario: symp_prob_22
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_prob_23
  @symp_prob
  Scenario: symp_prob_23
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.3946267859089032
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_deaths should remain the same

  @symp_prob_24
  @symp_prob
  Scenario: symp_prob_24
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_deaths should remain the same

  @symp_prob_25
  @symp_prob
  Scenario: symp_prob_25
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_prob_26
  @symp_prob
  Scenario: symp_prob_26
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_prob_27
  @symp_prob
  Scenario: symp_prob_27
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_prob_28
  @symp_prob
  Scenario: symp_prob_28
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.3946267859089032
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_deaths should remain the same

  @symp_prob_29
  @symp_prob
  Scenario: symp_prob_29
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.3946267859089032
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_prob_30
  @symp_prob
  Scenario: symp_prob_30
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_prob_31
  @symp_prob
  Scenario: symp_prob_31
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_prob_32
  @symp_prob
  Scenario: symp_prob_32
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_prob_0
  @asymp_prob
  Scenario: asymp_prob_0
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @asymp_prob_1
  @asymp_prob
  Scenario: asymp_prob_1
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @asymp_prob_2
  @asymp_prob
  Scenario: asymp_prob_2
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_tests should increase

  @asymp_prob_3
  @asymp_prob
  Scenario: asymp_prob_3
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @asymp_prob_4
  @asymp_prob
  Scenario: asymp_prob_4
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @asymp_prob_5
  @asymp_prob
  Scenario: asymp_prob_5
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @asymp_prob_6
  @asymp_prob
  Scenario: asymp_prob_6
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @asymp_prob_7
  @asymp_prob
  Scenario: asymp_prob_7
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @asymp_prob_8
  @asymp_prob
  Scenario: asymp_prob_8
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @asymp_prob_9
  @asymp_prob
  Scenario: asymp_prob_9
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @asymp_prob_10
  @asymp_prob
  Scenario: asymp_prob_10
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.39576785318565705
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @asymp_prob_11
  @asymp_prob
  Scenario: asymp_prob_11
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @asymp_prob_12
  @asymp_prob
  Scenario: asymp_prob_12
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @asymp_prob_13
  @asymp_prob
  Scenario: asymp_prob_13
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @asymp_prob_14
  @asymp_prob
  Scenario: asymp_prob_14
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @asymp_prob_15
  @asymp_prob
  Scenario: asymp_prob_15
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @asymp_prob_16
  @asymp_prob
  Scenario: asymp_prob_16
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_tests should increase

  @asymp_prob_17
  @asymp_prob
  Scenario: asymp_prob_17
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.39576785318565705
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.7292420114738518  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @asymp_prob_18
  @asymp_prob
  Scenario: asymp_prob_18
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @asymp_prob_19
  @asymp_prob
  Scenario: asymp_prob_19
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.39576785318565705
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_size        | 17019               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @asymp_prob_20
  @asymp_prob
  Scenario: asymp_prob_20
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.39576785318565705
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @asymp_prob_21
  @asymp_prob
  Scenario: asymp_prob_21
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_tests should increase

  @asymp_prob_22
  @asymp_prob
  Scenario: asymp_prob_22
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @asymp_prob_23
  @asymp_prob
  Scenario: asymp_prob_23
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.39576785318565705
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @asymp_prob_24
  @asymp_prob
  Scenario: asymp_prob_24
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @asymp_prob_25
  @asymp_prob
  Scenario: asymp_prob_25
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_tests should increase

  @asymp_prob_26
  @asymp_prob
  Scenario: asymp_prob_26
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @asymp_prob_27
  @asymp_prob
  Scenario: asymp_prob_27
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @asymp_prob_28
  @asymp_prob
  Scenario: asymp_prob_28
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.39576785318565705
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_tests should increase

  @asymp_prob_29
  @asymp_prob
  Scenario: asymp_prob_29
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.39576785318565705
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @asymp_prob_30
  @asymp_prob
  Scenario: asymp_prob_30
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_tests should increase

  @asymp_prob_31
  @asymp_prob
  Scenario: asymp_prob_31
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_tests should increase

  @asymp_prob_32
  @asymp_prob
  Scenario: asymp_prob_32
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_tests should increase

  @asymp_prob_0
  @asymp_prob
  Scenario: asymp_prob_0
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_prob_1
  @asymp_prob
  Scenario: asymp_prob_1
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_prob_2
  @asymp_prob
  Scenario: asymp_prob_2
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_quarantined should decrease

  @asymp_prob_3
  @asymp_prob
  Scenario: asymp_prob_3
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_prob_4
  @asymp_prob
  Scenario: asymp_prob_4
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_prob_5
  @asymp_prob
  Scenario: asymp_prob_5
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_prob_6
  @asymp_prob
  Scenario: asymp_prob_6
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_quarantined should decrease

  @asymp_prob_7
  @asymp_prob
  Scenario: asymp_prob_7
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_prob_8
  @asymp_prob
  Scenario: asymp_prob_8
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_quarantined should decrease

  @asymp_prob_9
  @asymp_prob
  Scenario: asymp_prob_9
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_quarantined should decrease

  @asymp_prob_10
  @asymp_prob
  Scenario: asymp_prob_10
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.39576785318565705
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_prob_11
  @asymp_prob
  Scenario: asymp_prob_11
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 13                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_prob_12
  @asymp_prob
  Scenario: asymp_prob_12
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_prob_13
  @asymp_prob
  Scenario: asymp_prob_13
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_prob_14
  @asymp_prob
  Scenario: asymp_prob_14
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_prob_15
  @asymp_prob
  Scenario: asymp_prob_15
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_prob_16
  @asymp_prob
  Scenario: asymp_prob_16
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_quarantined should decrease

  @asymp_prob_17
  @asymp_prob
  Scenario: asymp_prob_17
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.39576785318565705
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.7292420114738518  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_quarantined should decrease

  @asymp_prob_18
  @asymp_prob
  Scenario: asymp_prob_18
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_prob_19
  @asymp_prob
  Scenario: asymp_prob_19
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.39576785318565705
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_size        | 17019               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_prob_20
  @asymp_prob
  Scenario: asymp_prob_20
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.39576785318565705
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_prob_21
  @asymp_prob
  Scenario: asymp_prob_21
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_quarantined should decrease

  @asymp_prob_22
  @asymp_prob
  Scenario: asymp_prob_22
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_prob_23
  @asymp_prob
  Scenario: asymp_prob_23
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.39576785318565705
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_prob_24
  @asymp_prob
  Scenario: asymp_prob_24
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_prob_25
  @asymp_prob
  Scenario: asymp_prob_25
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_quarantined should decrease

  @asymp_prob_26
  @asymp_prob
  Scenario: asymp_prob_26
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_prob_27
  @asymp_prob
  Scenario: asymp_prob_27
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_quarantined should decrease

  @asymp_prob_28
  @asymp_prob
  Scenario: asymp_prob_28
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.39576785318565705
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_prob_29
  @asymp_prob
  Scenario: asymp_prob_29
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.39576785318565705
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_prob_30
  @asymp_prob
  Scenario: asymp_prob_30
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_prob_31
  @asymp_prob
  Scenario: asymp_prob_31
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_quarantined should decrease

  @asymp_prob_32
  @asymp_prob
  Scenario: asymp_prob_32
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_prob_0
  @asymp_prob
  Scenario: asymp_prob_0
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_prob_1
  @asymp_prob
  Scenario: asymp_prob_1
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_prob_2
  @asymp_prob
  Scenario: asymp_prob_2
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should decrease

  @asymp_prob_3
  @asymp_prob
  Scenario: asymp_prob_3
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.7292420114738518  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_prob_4
  @asymp_prob
  Scenario: asymp_prob_4
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_prob_5
  @asymp_prob
  Scenario: asymp_prob_5
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_infections should decrease

  @asymp_prob_6
  @asymp_prob
  Scenario: asymp_prob_6
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should decrease

  @asymp_prob_7
  @asymp_prob
  Scenario: asymp_prob_7
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_prob_8
  @asymp_prob
  Scenario: asymp_prob_8
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_infections should decrease

  @asymp_prob_9
  @asymp_prob
  Scenario: asymp_prob_9
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_prob_10
  @asymp_prob
  Scenario: asymp_prob_10
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.39576785318565705
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_prob_11
  @asymp_prob
  Scenario: asymp_prob_11
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_prob_12
  @asymp_prob
  Scenario: asymp_prob_12
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_prob_13
  @asymp_prob
  Scenario: asymp_prob_13
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_prob_14
  @asymp_prob
  Scenario: asymp_prob_14
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_prob_15
  @asymp_prob
  Scenario: asymp_prob_15
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_prob_16
  @asymp_prob
  Scenario: asymp_prob_16
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should decrease

  @asymp_prob_17
  @asymp_prob
  Scenario: asymp_prob_17
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.39576785318565705
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_infections should decrease

  @asymp_prob_18
  @asymp_prob
  Scenario: asymp_prob_18
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value              |
    | n_days          | 80                 |
    | quar_period     | 11                 |
    | pop_size        | 10000              |
    | pop_infected    | 217                |
    | symp_prob       | 0.3946267859089032 |
    | symp_quar_prob  | 0.0456075960115124 |
    | asymp_quar_prob | 0.5362647235083882 |
    | trace_probs     | 0.4179307148516287 |
    Then the cum_infections should decrease

  @asymp_prob_19
  @asymp_prob
  Scenario: asymp_prob_19
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.39576785318565705
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_prob_20
  @asymp_prob
  Scenario: asymp_prob_20
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.39576785318565705
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_prob_21
  @asymp_prob
  Scenario: asymp_prob_21
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_infections should decrease

  @asymp_prob_22
  @asymp_prob
  Scenario: asymp_prob_22
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_prob_23
  @asymp_prob
  Scenario: asymp_prob_23
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.39576785318565705
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_prob_24
  @asymp_prob
  Scenario: asymp_prob_24
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_prob_25
  @asymp_prob
  Scenario: asymp_prob_25
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_prob_26
  @asymp_prob
  Scenario: asymp_prob_26
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_prob_27
  @asymp_prob
  Scenario: asymp_prob_27
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should decrease

  @asymp_prob_28
  @asymp_prob
  Scenario: asymp_prob_28
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.39576785318565705
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should decrease

  @asymp_prob_29
  @asymp_prob
  Scenario: asymp_prob_29
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.39576785318565705
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_prob_30
  @asymp_prob
  Scenario: asymp_prob_30
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_prob_31
  @asymp_prob
  Scenario: asymp_prob_31
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_prob_32
  @asymp_prob
  Scenario: asymp_prob_32
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_prob_0
  @asymp_prob
  Scenario: asymp_prob_0
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_prob_1
  @asymp_prob
  Scenario: asymp_prob_1
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_prob_2
  @asymp_prob
  Scenario: asymp_prob_2
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_prob_3
  @asymp_prob
  Scenario: asymp_prob_3
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.7292420114738518  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_prob_4
  @asymp_prob
  Scenario: asymp_prob_4
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_prob_5
  @asymp_prob
  Scenario: asymp_prob_5
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_prob_6
  @asymp_prob
  Scenario: asymp_prob_6
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_prob_7
  @asymp_prob
  Scenario: asymp_prob_7
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_prob_8
  @asymp_prob
  Scenario: asymp_prob_8
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_prob_9
  @asymp_prob
  Scenario: asymp_prob_9
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_deaths should remain the same

  @asymp_prob_10
  @asymp_prob
  Scenario: asymp_prob_10
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.39576785318565705
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_deaths should remain the same

  @asymp_prob_11
  @asymp_prob
  Scenario: asymp_prob_11
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_prob_12
  @asymp_prob
  Scenario: asymp_prob_12
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_prob_13
  @asymp_prob
  Scenario: asymp_prob_13
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_prob_14
  @asymp_prob
  Scenario: asymp_prob_14
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_prob_15
  @asymp_prob
  Scenario: asymp_prob_15
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_prob_16
  @asymp_prob
  Scenario: asymp_prob_16
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_prob_17
  @asymp_prob
  Scenario: asymp_prob_17
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.39576785318565705
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.7292420114738518  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_deaths should remain the same

  @asymp_prob_18
  @asymp_prob
  Scenario: asymp_prob_18
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_deaths should remain the same

  @asymp_prob_19
  @asymp_prob
  Scenario: asymp_prob_19
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.39576785318565705
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_prob_20
  @asymp_prob
  Scenario: asymp_prob_20
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.39576785318565705
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_prob_21
  @asymp_prob
  Scenario: asymp_prob_21
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_deaths should remain the same

  @asymp_prob_22
  @asymp_prob
  Scenario: asymp_prob_22
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.7292420114738518  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_prob_23
  @asymp_prob
  Scenario: asymp_prob_23
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.39576785318565705
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_prob_24
  @asymp_prob
  Scenario: asymp_prob_24
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_deaths should remain the same

  @asymp_prob_25
  @asymp_prob
  Scenario: asymp_prob_25
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_deaths should remain the same

  @asymp_prob_26
  @asymp_prob
  Scenario: asymp_prob_26
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_prob_27
  @asymp_prob
  Scenario: asymp_prob_27
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_deaths should remain the same

  @asymp_prob_28
  @asymp_prob
  Scenario: asymp_prob_28
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.39576785318565705
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_deaths should remain the same

  @asymp_prob_29
  @asymp_prob
  Scenario: asymp_prob_29
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.39576785318565705
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_prob_30
  @asymp_prob
  Scenario: asymp_prob_30
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_deaths should remain the same

  @asymp_prob_31
  @asymp_prob
  Scenario: asymp_prob_31
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_deaths should remain the same

  @asymp_prob_32
  @asymp_prob
  Scenario: asymp_prob_32
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_quar_prob_0
  @symp_quar_prob
  Scenario: symp_quar_prob_0
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_quar_prob_1
  @symp_quar_prob
  Scenario: symp_quar_prob_1
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_quar_prob_2
  @symp_quar_prob
  Scenario: symp_quar_prob_2
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_tests should decrease

  @symp_quar_prob_3
  @symp_quar_prob
  Scenario: symp_quar_prob_3
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_tests should decrease

  @symp_quar_prob_4
  @symp_quar_prob
  Scenario: symp_quar_prob_4
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_quar_prob_5
  @symp_quar_prob
  Scenario: symp_quar_prob_5
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_quar_prob_6
  @symp_quar_prob
  Scenario: symp_quar_prob_6
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_tests should decrease

  @symp_quar_prob_7
  @symp_quar_prob
  Scenario: symp_quar_prob_7
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_quar_prob_8
  @symp_quar_prob
  Scenario: symp_quar_prob_8
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_tests should decrease

  @symp_quar_prob_9
  @symp_quar_prob
  Scenario: symp_quar_prob_9
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_quar_prob_10
  @symp_quar_prob
  Scenario: symp_quar_prob_10
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_tests should decrease

  @symp_quar_prob_11
  @symp_quar_prob
  Scenario: symp_quar_prob_11
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_quar_prob_12
  @symp_quar_prob
  Scenario: symp_quar_prob_12
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_quar_prob_13
  @symp_quar_prob
  Scenario: symp_quar_prob_13
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_tests should decrease

  @symp_quar_prob_14
  @symp_quar_prob
  Scenario: symp_quar_prob_14
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.0456075960115124
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_quar_prob_15
  @symp_quar_prob
  Scenario: symp_quar_prob_15
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.0456075960115124
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_quar_prob_16
  @symp_quar_prob
  Scenario: symp_quar_prob_16
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_quar_prob_17
  @symp_quar_prob
  Scenario: symp_quar_prob_17
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_quar_prob_18
  @symp_quar_prob
  Scenario: symp_quar_prob_18
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.0456075960115124
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_quar_prob_19
  @symp_quar_prob
  Scenario: symp_quar_prob_19
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_quar_prob_20
  @symp_quar_prob
  Scenario: symp_quar_prob_20
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_quar_prob_21
  @symp_quar_prob
  Scenario: symp_quar_prob_21
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.0456075960115124
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_tests should decrease

  @symp_quar_prob_22
  @symp_quar_prob
  Scenario: symp_quar_prob_22
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.0456075960115124
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_quar_prob_23
  @symp_quar_prob
  Scenario: symp_quar_prob_23
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_tests should decrease

  @symp_quar_prob_24
  @symp_quar_prob
  Scenario: symp_quar_prob_24
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_quar_prob_25
  @symp_quar_prob
  Scenario: symp_quar_prob_25
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_quar_prob_26
  @symp_quar_prob
  Scenario: symp_quar_prob_26
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_quar_prob_27
  @symp_quar_prob
  Scenario: symp_quar_prob_27
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_tests should decrease

  @symp_quar_prob_28
  @symp_quar_prob
  Scenario: symp_quar_prob_28
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_quar_prob_29
  @symp_quar_prob
  Scenario: symp_quar_prob_29
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_quar_prob_30
  @symp_quar_prob
  Scenario: symp_quar_prob_30
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_quar_prob_31
  @symp_quar_prob
  Scenario: symp_quar_prob_31
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.0456075960115124
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_quar_prob_32
  @symp_quar_prob
  Scenario: symp_quar_prob_32
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should decrease

  @symp_quar_prob_0
  @symp_quar_prob
  Scenario: symp_quar_prob_0
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_1
  @symp_quar_prob
  Scenario: symp_quar_prob_1
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_2
  @symp_quar_prob
  Scenario: symp_quar_prob_2
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_3
  @symp_quar_prob
  Scenario: symp_quar_prob_3
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_4
  @symp_quar_prob
  Scenario: symp_quar_prob_4
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_5
  @symp_quar_prob
  Scenario: symp_quar_prob_5
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_6
  @symp_quar_prob
  Scenario: symp_quar_prob_6
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_7
  @symp_quar_prob
  Scenario: symp_quar_prob_7
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_8
  @symp_quar_prob
  Scenario: symp_quar_prob_8
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_9
  @symp_quar_prob
  Scenario: symp_quar_prob_9
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_10
  @symp_quar_prob
  Scenario: symp_quar_prob_10
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_11
  @symp_quar_prob
  Scenario: symp_quar_prob_11
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 13                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_12
  @symp_quar_prob
  Scenario: symp_quar_prob_12
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_13
  @symp_quar_prob
  Scenario: symp_quar_prob_13
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.6240963641577594  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_14
  @symp_quar_prob
  Scenario: symp_quar_prob_14
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.0456075960115124
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_15
  @symp_quar_prob
  Scenario: symp_quar_prob_15
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.0456075960115124
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_16
  @symp_quar_prob
  Scenario: symp_quar_prob_16
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_17
  @symp_quar_prob
  Scenario: symp_quar_prob_17
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_18
  @symp_quar_prob
  Scenario: symp_quar_prob_18
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.0456075960115124
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_19
  @symp_quar_prob
  Scenario: symp_quar_prob_19
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_20
  @symp_quar_prob
  Scenario: symp_quar_prob_20
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_21
  @symp_quar_prob
  Scenario: symp_quar_prob_21
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.0456075960115124
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_22
  @symp_quar_prob
  Scenario: symp_quar_prob_22
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.0456075960115124
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_23
  @symp_quar_prob
  Scenario: symp_quar_prob_23
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_24
  @symp_quar_prob
  Scenario: symp_quar_prob_24
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_25
  @symp_quar_prob
  Scenario: symp_quar_prob_25
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_26
  @symp_quar_prob
  Scenario: symp_quar_prob_26
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_27
  @symp_quar_prob
  Scenario: symp_quar_prob_27
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_28
  @symp_quar_prob
  Scenario: symp_quar_prob_28
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_29
  @symp_quar_prob
  Scenario: symp_quar_prob_29
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_30
  @symp_quar_prob
  Scenario: symp_quar_prob_30
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_31
  @symp_quar_prob
  Scenario: symp_quar_prob_31
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.0456075960115124
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_32
  @symp_quar_prob
  Scenario: symp_quar_prob_32
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_0
  @symp_quar_prob
  Scenario: symp_quar_prob_0
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_quar_prob_1
  @symp_quar_prob
  Scenario: symp_quar_prob_1
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_quar_prob_2
  @symp_quar_prob
  Scenario: symp_quar_prob_2
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_quar_prob_3
  @symp_quar_prob
  Scenario: symp_quar_prob_3
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_quar_prob_4
  @symp_quar_prob
  Scenario: symp_quar_prob_4
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_quar_prob_5
  @symp_quar_prob
  Scenario: symp_quar_prob_5
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_infections should decrease

  @symp_quar_prob_6
  @symp_quar_prob
  Scenario: symp_quar_prob_6
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_quar_prob_7
  @symp_quar_prob
  Scenario: symp_quar_prob_7
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_quar_prob_8
  @symp_quar_prob
  Scenario: symp_quar_prob_8
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_quar_prob_9
  @symp_quar_prob
  Scenario: symp_quar_prob_9
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_quar_prob_10
  @symp_quar_prob
  Scenario: symp_quar_prob_10
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should decrease

  @symp_quar_prob_11
  @symp_quar_prob
  Scenario: symp_quar_prob_11
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_quar_prob_12
  @symp_quar_prob
  Scenario: symp_quar_prob_12
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_quar_prob_13
  @symp_quar_prob
  Scenario: symp_quar_prob_13
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_quar_prob_14
  @symp_quar_prob
  Scenario: symp_quar_prob_14
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.0456075960115124
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_quar_prob_15
  @symp_quar_prob
  Scenario: symp_quar_prob_15
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.0456075960115124
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_quar_prob_16
  @symp_quar_prob
  Scenario: symp_quar_prob_16
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should decrease

  @symp_quar_prob_17
  @symp_quar_prob
  Scenario: symp_quar_prob_17
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_quar_prob_18
  @symp_quar_prob
  Scenario: symp_quar_prob_18
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.0456075960115124
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_quar_prob_19
  @symp_quar_prob
  Scenario: symp_quar_prob_19
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_quar_prob_20
  @symp_quar_prob
  Scenario: symp_quar_prob_20
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_quar_prob_21
  @symp_quar_prob
  Scenario: symp_quar_prob_21
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.0456075960115124
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_quar_prob_22
  @symp_quar_prob
  Scenario: symp_quar_prob_22
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.0456075960115124
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_quar_prob_23
  @symp_quar_prob
  Scenario: symp_quar_prob_23
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_quar_prob_24
  @symp_quar_prob
  Scenario: symp_quar_prob_24
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_infections should decrease

  @symp_quar_prob_25
  @symp_quar_prob
  Scenario: symp_quar_prob_25
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_quar_prob_26
  @symp_quar_prob
  Scenario: symp_quar_prob_26
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_quar_prob_27
  @symp_quar_prob
  Scenario: symp_quar_prob_27
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_quar_prob_28
  @symp_quar_prob
  Scenario: symp_quar_prob_28
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should decrease

  @symp_quar_prob_29
  @symp_quar_prob
  Scenario: symp_quar_prob_29
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_quar_prob_30
  @symp_quar_prob
  Scenario: symp_quar_prob_30
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should decrease

  @symp_quar_prob_31
  @symp_quar_prob
  Scenario: symp_quar_prob_31
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.0456075960115124
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should decrease

  @symp_quar_prob_32
  @symp_quar_prob
  Scenario: symp_quar_prob_32
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should decrease

  @symp_quar_prob_0
  @symp_quar_prob
  Scenario: symp_quar_prob_0
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_quar_prob_1
  @symp_quar_prob
  Scenario: symp_quar_prob_1
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_quar_prob_2
  @symp_quar_prob
  Scenario: symp_quar_prob_2
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_quar_prob_3
  @symp_quar_prob
  Scenario: symp_quar_prob_3
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_deaths should remain the same

  @symp_quar_prob_4
  @symp_quar_prob
  Scenario: symp_quar_prob_4
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_quar_prob_5
  @symp_quar_prob
  Scenario: symp_quar_prob_5
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_quar_prob_6
  @symp_quar_prob
  Scenario: symp_quar_prob_6
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value              |
    | n_days          | 80                 |
    | quar_period     | 11                 |
    | pop_size        | 11593              |
    | pop_infected    | 295                |
    | symp_prob       | 0.5299357265511195 |
    | asymp_prob      | 0.5320606162934023 |
    | asymp_quar_prob | 0.5362647235083882 |
    | trace_probs     | 0.7734426077281416 |
    Then the cum_deaths should remain the same

  @symp_quar_prob_7
  @symp_quar_prob
  Scenario: symp_quar_prob_7
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_quar_prob_8
  @symp_quar_prob
  Scenario: symp_quar_prob_8
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_quar_prob_9
  @symp_quar_prob
  Scenario: symp_quar_prob_9
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_quar_prob_10
  @symp_quar_prob
  Scenario: symp_quar_prob_10
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_deaths should remain the same

  @symp_quar_prob_11
  @symp_quar_prob
  Scenario: symp_quar_prob_11
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 13                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_quar_prob_12
  @symp_quar_prob
  Scenario: symp_quar_prob_12
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_quar_prob_13
  @symp_quar_prob
  Scenario: symp_quar_prob_13
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.6240963641577594  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_quar_prob_14
  @symp_quar_prob
  Scenario: symp_quar_prob_14
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.0456075960115124
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_quar_prob_15
  @symp_quar_prob
  Scenario: symp_quar_prob_15
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.0456075960115124
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_quar_prob_16
  @symp_quar_prob
  Scenario: symp_quar_prob_16
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_deaths should remain the same

  @symp_quar_prob_17
  @symp_quar_prob
  Scenario: symp_quar_prob_17
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_quar_prob_18
  @symp_quar_prob
  Scenario: symp_quar_prob_18
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.0456075960115124
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_quar_prob_19
  @symp_quar_prob
  Scenario: symp_quar_prob_19
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_quar_prob_20
  @symp_quar_prob
  Scenario: symp_quar_prob_20
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_quar_prob_21
  @symp_quar_prob
  Scenario: symp_quar_prob_21
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.0456075960115124
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_deaths should remain the same

  @symp_quar_prob_22
  @symp_quar_prob
  Scenario: symp_quar_prob_22
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.0456075960115124
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_quar_prob_23
  @symp_quar_prob
  Scenario: symp_quar_prob_23
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_deaths should remain the same

  @symp_quar_prob_24
  @symp_quar_prob
  Scenario: symp_quar_prob_24
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_deaths should remain the same

  @symp_quar_prob_25
  @symp_quar_prob
  Scenario: symp_quar_prob_25
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_deaths should remain the same

  @symp_quar_prob_26
  @symp_quar_prob
  Scenario: symp_quar_prob_26
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_quar_prob_27
  @symp_quar_prob
  Scenario: symp_quar_prob_27
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_deaths should remain the same

  @symp_quar_prob_28
  @symp_quar_prob
  Scenario: symp_quar_prob_28
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_deaths should remain the same

  @symp_quar_prob_29
  @symp_quar_prob
  Scenario: symp_quar_prob_29
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_quar_prob_30
  @symp_quar_prob
  Scenario: symp_quar_prob_30
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_deaths should remain the same

  @symp_quar_prob_31
  @symp_quar_prob
  Scenario: symp_quar_prob_31
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.0456075960115124
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @symp_quar_prob_32
  @symp_quar_prob
  Scenario: symp_quar_prob_32
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_0
  @asymp_quar_prob
  Scenario: asymp_quar_prob_0
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.2404924383007006
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_tests should decrease

  @asymp_quar_prob_1
  @asymp_quar_prob
  Scenario: asymp_quar_prob_1
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.2404924383007006
    And effect modifier values
    | modifier       | value               |
    | n_days         | 96                  |
    | quar_period    | 11                  |
    | pop_size       | 17019               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.6240963641577594  |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_tests should decrease

  @asymp_quar_prob_2
  @asymp_quar_prob
  Scenario: asymp_quar_prob_2
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.2404924383007006
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.7734426077281416  |
    Then the cum_tests should decrease

  @asymp_quar_prob_3
  @asymp_quar_prob
  Scenario: asymp_quar_prob_3
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.2404924383007006
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 11                  |
    | pop_size       | 11593               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.7292420114738518  |
    | asymp_prob     | 0.39576785318565705 |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_tests should decrease

  @asymp_quar_prob_4
  @asymp_quar_prob
  Scenario: asymp_quar_prob_4
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 17019               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.7292420114738518  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_tests should decrease

  @asymp_quar_prob_5
  @asymp_quar_prob
  Scenario: asymp_quar_prob_5
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 90                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.27025117739698024 |
    Then the cum_tests should decrease

  @asymp_quar_prob_6
  @asymp_quar_prob
  Scenario: asymp_quar_prob_6
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 11593               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_tests should decrease

  @asymp_quar_prob_7
  @asymp_quar_prob
  Scenario: asymp_quar_prob_7
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 15                  |
    | pop_size       | 10000               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.39576785318565705 |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_tests should decrease

  @asymp_quar_prob_8
  @asymp_quar_prob
  Scenario: asymp_quar_prob_8
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_tests should decrease

  @asymp_quar_prob_9
  @asymp_quar_prob
  Scenario: asymp_quar_prob_9
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 15                  |
    | pop_size       | 10000               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_tests should decrease

  @asymp_quar_prob_10
  @asymp_quar_prob
  Scenario: asymp_quar_prob_10
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 17019               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.39576785318565705 |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_tests should decrease

  @asymp_quar_prob_11
  @asymp_quar_prob
  Scenario: asymp_quar_prob_11
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 13                  |
    | pop_size       | 10000               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.5299357265511195  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_tests should decrease

  @asymp_quar_prob_12
  @asymp_quar_prob
  Scenario: asymp_quar_prob_12
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 96                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.39576785318565705 |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_tests should decrease

  @asymp_quar_prob_13
  @asymp_quar_prob
  Scenario: asymp_quar_prob_13
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 11                  |
    | pop_size       | 13013               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.6240963641577594  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.4179307148516287  |
    Then the cum_tests should decrease

  @asymp_quar_prob_14
  @asymp_quar_prob
  Scenario: asymp_quar_prob_14
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 11593               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_tests should decrease

  @asymp_quar_prob_15
  @asymp_quar_prob
  Scenario: asymp_quar_prob_15
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 17019               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_tests should decrease

  @asymp_quar_prob_16
  @asymp_quar_prob
  Scenario: asymp_quar_prob_16
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 11593               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_tests should decrease

  @asymp_quar_prob_17
  @asymp_quar_prob
  Scenario: asymp_quar_prob_17
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.7292420114738518  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_tests should decrease

  @asymp_quar_prob_18
  @asymp_quar_prob
  Scenario: asymp_quar_prob_18
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.4179307148516287  |
    Then the cum_tests should decrease

  @asymp_quar_prob_19
  @asymp_quar_prob
  Scenario: asymp_quar_prob_19
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.39576785318565705 |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_tests should decrease

  @asymp_quar_prob_20
  @asymp_quar_prob
  Scenario: asymp_quar_prob_20
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_tests should decrease

  @asymp_quar_prob_21
  @asymp_quar_prob
  Scenario: asymp_quar_prob_21
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.39576785318565705 |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.4179307148516287  |
    Then the cum_tests should decrease

  @asymp_quar_prob_22
  @asymp_quar_prob
  Scenario: asymp_quar_prob_22
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.7292420114738518  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_tests should decrease

  @asymp_quar_prob_23
  @asymp_quar_prob
  Scenario: asymp_quar_prob_23
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 15                  |
    | pop_size       | 11593               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.5299357265511195  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.4179307148516287  |
    Then the cum_tests should decrease

  @asymp_quar_prob_24
  @asymp_quar_prob
  Scenario: asymp_quar_prob_24
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 15                  |
    | pop_size       | 11593               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.27025117739698024 |
    Then the cum_tests should decrease

  @asymp_quar_prob_25
  @asymp_quar_prob
  Scenario: asymp_quar_prob_25
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.39576785318565705 |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.4179307148516287  |
    Then the cum_tests should decrease

  @asymp_quar_prob_26
  @asymp_quar_prob
  Scenario: asymp_quar_prob_26
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 90                  |
    | quar_period    | 11                  |
    | pop_size       | 17019               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_tests should decrease

  @asymp_quar_prob_27
  @asymp_quar_prob
  Scenario: asymp_quar_prob_27
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 90                  |
    | quar_period    | 13                  |
    | pop_size       | 10000               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.7734426077281416  |
    Then the cum_tests should decrease

  @asymp_quar_prob_28
  @asymp_quar_prob
  Scenario: asymp_quar_prob_28
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 13                  |
    | pop_size       | 11593               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_tests should decrease

  @asymp_quar_prob_29
  @asymp_quar_prob
  Scenario: asymp_quar_prob_29
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_tests should decrease

  @asymp_quar_prob_30
  @asymp_quar_prob
  Scenario: asymp_quar_prob_30
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_tests should decrease

  @asymp_quar_prob_31
  @asymp_quar_prob
  Scenario: asymp_quar_prob_31
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 96                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_tests should decrease

  @asymp_quar_prob_32
  @asymp_quar_prob
  Scenario: asymp_quar_prob_32
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 11593               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_tests should decrease

  @asymp_quar_prob_0
  @asymp_quar_prob
  Scenario: asymp_quar_prob_0
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.2404924383007006
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_1
  @asymp_quar_prob
  Scenario: asymp_quar_prob_1
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.2404924383007006
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 13                  |
    | pop_size       | 10000               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.6240963641577594  |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.4179307148516287  |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_2
  @asymp_quar_prob
  Scenario: asymp_quar_prob_2
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.2404924383007006
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.7734426077281416  |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_3
  @asymp_quar_prob
  Scenario: asymp_quar_prob_3
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.2404924383007006
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_4
  @asymp_quar_prob
  Scenario: asymp_quar_prob_4
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 17019               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.7292420114738518  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_5
  @asymp_quar_prob
  Scenario: asymp_quar_prob_5
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 13                  |
    | pop_size       | 10000               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_6
  @asymp_quar_prob
  Scenario: asymp_quar_prob_6
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 11593               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.5299357265511195  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.7734426077281416  |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_7
  @asymp_quar_prob
  Scenario: asymp_quar_prob_7
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 15                  |
    | pop_size       | 10000               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.39576785318565705 |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_8
  @asymp_quar_prob
  Scenario: asymp_quar_prob_8
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.4179307148516287  |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_9
  @asymp_quar_prob
  Scenario: asymp_quar_prob_9
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 96                  |
    | quar_period    | 15                  |
    | pop_size       | 10000               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.7292420114738518  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_10
  @asymp_quar_prob
  Scenario: asymp_quar_prob_10
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 17019               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.39576785318565705 |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.7734426077281416  |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_11
  @asymp_quar_prob
  Scenario: asymp_quar_prob_11
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 13                  |
    | pop_size       | 13013               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.5299357265511195  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_12
  @asymp_quar_prob
  Scenario: asymp_quar_prob_12
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.39576785318565705 |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_13
  @asymp_quar_prob
  Scenario: asymp_quar_prob_13
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.4179307148516287  |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_14
  @asymp_quar_prob
  Scenario: asymp_quar_prob_14
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 90                  |
    | quar_period    | 11                  |
    | pop_size       | 11593               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_15
  @asymp_quar_prob
  Scenario: asymp_quar_prob_15
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_16
  @asymp_quar_prob
  Scenario: asymp_quar_prob_16
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 13                  |
    | pop_size       | 11593               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.7734426077281416  |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_17
  @asymp_quar_prob
  Scenario: asymp_quar_prob_17
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.7292420114738518  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.27025117739698024 |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_18
  @asymp_quar_prob
  Scenario: asymp_quar_prob_18
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.5299357265511195  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_19
  @asymp_quar_prob
  Scenario: asymp_quar_prob_19
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 15                  |
    | pop_size       | 17019               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.39576785318565705 |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_20
  @asymp_quar_prob
  Scenario: asymp_quar_prob_20
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_21
  @asymp_quar_prob
  Scenario: asymp_quar_prob_21
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.39576785318565705 |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_22
  @asymp_quar_prob
  Scenario: asymp_quar_prob_22
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 17019               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_23
  @asymp_quar_prob
  Scenario: asymp_quar_prob_23
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 11593               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.5299357265511195  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.4179307148516287  |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_24
  @asymp_quar_prob
  Scenario: asymp_quar_prob_24
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 11593               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.27025117739698024 |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_25
  @asymp_quar_prob
  Scenario: asymp_quar_prob_25
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 11593               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.39576785318565705 |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_26
  @asymp_quar_prob
  Scenario: asymp_quar_prob_26
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 90                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_27
  @asymp_quar_prob
  Scenario: asymp_quar_prob_27
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 13                  |
    | pop_size       | 13013               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_28
  @asymp_quar_prob
  Scenario: asymp_quar_prob_28
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 11593               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.7734426077281416  |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_29
  @asymp_quar_prob
  Scenario: asymp_quar_prob_29
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 11                  |
    | pop_size       | 13013               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_30
  @asymp_quar_prob
  Scenario: asymp_quar_prob_30
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.6240963641577594  |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.7734426077281416  |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_31
  @asymp_quar_prob
  Scenario: asymp_quar_prob_31
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.7734426077281416  |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_32
  @asymp_quar_prob
  Scenario: asymp_quar_prob_32
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 90                  |
    | quar_period    | 11                  |
    | pop_size       | 11593               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.6240963641577594  |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.7734426077281416  |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_0
  @asymp_quar_prob
  Scenario: asymp_quar_prob_0
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.2404924383007006
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_quar_prob_1
  @asymp_quar_prob
  Scenario: asymp_quar_prob_1
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.2404924383007006
    And effect modifier values
    | modifier       | value               |
    | n_days         | 96                  |
    | quar_period    | 11                  |
    | pop_size       | 17019               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.4179307148516287  |
    Then the cum_infections should decrease

  @asymp_quar_prob_2
  @asymp_quar_prob
  Scenario: asymp_quar_prob_2
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.2404924383007006
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.7734426077281416  |
    Then the cum_infections should decrease

  @asymp_quar_prob_3
  @asymp_quar_prob
  Scenario: asymp_quar_prob_3
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.2404924383007006
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 11                  |
    | pop_size       | 11593               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.39576785318565705 |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_quar_prob_4
  @asymp_quar_prob
  Scenario: asymp_quar_prob_4
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_quar_prob_5
  @asymp_quar_prob
  Scenario: asymp_quar_prob_5
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 90                  |
    | quar_period    | 13                  |
    | pop_size       | 10000               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.6240963641577594  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_quar_prob_6
  @asymp_quar_prob
  Scenario: asymp_quar_prob_6
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.5299357265511195  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.7734426077281416  |
    Then the cum_infections should decrease

  @asymp_quar_prob_7
  @asymp_quar_prob
  Scenario: asymp_quar_prob_7
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 15                  |
    | pop_size       | 10000               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.39576785318565705 |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_quar_prob_8
  @asymp_quar_prob
  Scenario: asymp_quar_prob_8
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.4179307148516287  |
    Then the cum_infections should decrease

  @asymp_quar_prob_9
  @asymp_quar_prob
  Scenario: asymp_quar_prob_9
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 96                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.7292420114738518  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_quar_prob_10
  @asymp_quar_prob
  Scenario: asymp_quar_prob_10
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 17019               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.39576785318565705 |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.7734426077281416  |
    Then the cum_infections should decrease

  @asymp_quar_prob_11
  @asymp_quar_prob
  Scenario: asymp_quar_prob_11
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 13                  |
    | pop_size       | 10000               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_quar_prob_12
  @asymp_quar_prob
  Scenario: asymp_quar_prob_12
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 96                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.5299357265511195  |
    | asymp_prob     | 0.39576785318565705 |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_quar_prob_13
  @asymp_quar_prob
  Scenario: asymp_quar_prob_13
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 11                  |
    | pop_size       | 13013               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.7292420114738518  |
    | asymp_prob     | 0.6240963641577594  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.4179307148516287  |
    Then the cum_infections should decrease

  @asymp_quar_prob_14
  @asymp_quar_prob
  Scenario: asymp_quar_prob_14
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 90                  |
    | quar_period    | 15                  |
    | pop_size       | 11593               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_quar_prob_15
  @asymp_quar_prob
  Scenario: asymp_quar_prob_15
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_quar_prob_16
  @asymp_quar_prob
  Scenario: asymp_quar_prob_16
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 11593               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.7734426077281416  |
    Then the cum_infections should decrease

  @asymp_quar_prob_17
  @asymp_quar_prob
  Scenario: asymp_quar_prob_17
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.7292420114738518  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.27025117739698024 |
    Then the cum_infections should decrease

  @asymp_quar_prob_18
  @asymp_quar_prob
  Scenario: asymp_quar_prob_18
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.4179307148516287  |
    Then the cum_infections should decrease

  @asymp_quar_prob_19
  @asymp_quar_prob
  Scenario: asymp_quar_prob_19
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 11                  |
    | pop_size       | 17019               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.39576785318565705 |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_quar_prob_20
  @asymp_quar_prob
  Scenario: asymp_quar_prob_20
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_quar_prob_21
  @asymp_quar_prob
  Scenario: asymp_quar_prob_21
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.39576785318565705 |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.4179307148516287  |
    Then the cum_infections should decrease

  @asymp_quar_prob_22
  @asymp_quar_prob
  Scenario: asymp_quar_prob_22
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 17019               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_quar_prob_23
  @asymp_quar_prob
  Scenario: asymp_quar_prob_23
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 11593               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_quar_prob_24
  @asymp_quar_prob
  Scenario: asymp_quar_prob_24
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 11593               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_quar_prob_25
  @asymp_quar_prob
  Scenario: asymp_quar_prob_25
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 11593               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.39576785318565705 |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.4179307148516287  |
    Then the cum_infections should decrease

  @asymp_quar_prob_26
  @asymp_quar_prob
  Scenario: asymp_quar_prob_26
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 17019               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_quar_prob_27
  @asymp_quar_prob
  Scenario: asymp_quar_prob_27
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 13                  |
    | pop_size       | 13013               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_quar_prob_28
  @asymp_quar_prob
  Scenario: asymp_quar_prob_28
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 11593               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.6240963641577594  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_quar_prob_29
  @asymp_quar_prob
  Scenario: asymp_quar_prob_29
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_quar_prob_30
  @asymp_quar_prob
  Scenario: asymp_quar_prob_30
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.6240963641577594  |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_infections should decrease

  @asymp_quar_prob_31
  @asymp_quar_prob
  Scenario: asymp_quar_prob_31
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.7734426077281416  |
    Then the cum_infections should decrease

  @asymp_quar_prob_32
  @asymp_quar_prob
  Scenario: asymp_quar_prob_32
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 11593               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.6240963641577594  |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.7734426077281416  |
    Then the cum_infections should decrease

  @asymp_quar_prob_0
  @asymp_quar_prob
  Scenario: asymp_quar_prob_0
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.2404924383007006
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_1
  @asymp_quar_prob
  Scenario: asymp_quar_prob_1
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.2404924383007006
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 13                  |
    | pop_size       | 10000               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.6240963641577594  |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_2
  @asymp_quar_prob
  Scenario: asymp_quar_prob_2
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.2404924383007006
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.7734426077281416  |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_3
  @asymp_quar_prob
  Scenario: asymp_quar_prob_3
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.2404924383007006
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 15                  |
    | pop_size       | 11593               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.39576785318565705 |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_4
  @asymp_quar_prob
  Scenario: asymp_quar_prob_4
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_5
  @asymp_quar_prob
  Scenario: asymp_quar_prob_5
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 90                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.6240963641577594  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_6
  @asymp_quar_prob
  Scenario: asymp_quar_prob_6
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 11593               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.7734426077281416  |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_7
  @asymp_quar_prob
  Scenario: asymp_quar_prob_7
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.39576785318565705 |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_8
  @asymp_quar_prob
  Scenario: asymp_quar_prob_8
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.4179307148516287  |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_9
  @asymp_quar_prob
  Scenario: asymp_quar_prob_9
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 96                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.7734426077281416  |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_10
  @asymp_quar_prob
  Scenario: asymp_quar_prob_10
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 17019               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.39576785318565705 |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_11
  @asymp_quar_prob
  Scenario: asymp_quar_prob_11
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 13                  |
    | pop_size       | 10000               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_12
  @asymp_quar_prob
  Scenario: asymp_quar_prob_12
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 96                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.39576785318565705 |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_13
  @asymp_quar_prob
  Scenario: asymp_quar_prob_13
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 11                  |
    | pop_size       | 13013               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.7292420114738518  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_14
  @asymp_quar_prob
  Scenario: asymp_quar_prob_14
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 90                  |
    | quar_period    | 15                  |
    | pop_size       | 11593               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_15
  @asymp_quar_prob
  Scenario: asymp_quar_prob_15
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 17019               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_16
  @asymp_quar_prob
  Scenario: asymp_quar_prob_16
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 11593               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.7734426077281416  |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_17
  @asymp_quar_prob
  Scenario: asymp_quar_prob_17
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.7292420114738518  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_18
  @asymp_quar_prob
  Scenario: asymp_quar_prob_18
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_19
  @asymp_quar_prob
  Scenario: asymp_quar_prob_19
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 11                  |
    | pop_size       | 17019               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.39576785318565705 |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_20
  @asymp_quar_prob
  Scenario: asymp_quar_prob_20
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_21
  @asymp_quar_prob
  Scenario: asymp_quar_prob_21
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.39576785318565705 |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_22
  @asymp_quar_prob
  Scenario: asymp_quar_prob_22
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_23
  @asymp_quar_prob
  Scenario: asymp_quar_prob_23
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 11593               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.4179307148516287  |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_24
  @asymp_quar_prob
  Scenario: asymp_quar_prob_24
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 11593               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_25
  @asymp_quar_prob
  Scenario: asymp_quar_prob_25
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 90                  |
    | quar_period    | 13                  |
    | pop_size       | 11593               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.39576785318565705 |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_26
  @asymp_quar_prob
  Scenario: asymp_quar_prob_26
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 90                  |
    | quar_period    | 11                  |
    | pop_size       | 17019               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_27
  @asymp_quar_prob
  Scenario: asymp_quar_prob_27
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 90                  |
    | quar_period    | 11                  |
    | pop_size       | 13013               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.7734426077281416  |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_28
  @asymp_quar_prob
  Scenario: asymp_quar_prob_28
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 11593               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.6240963641577594  |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.7734426077281416  |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_29
  @asymp_quar_prob
  Scenario: asymp_quar_prob_29
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_30
  @asymp_quar_prob
  Scenario: asymp_quar_prob_30
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.6240963641577594  |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.7734426077281416  |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_31
  @asymp_quar_prob
  Scenario: asymp_quar_prob_31
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.7734426077281416  |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_32
  @asymp_quar_prob
  Scenario: asymp_quar_prob_32
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 11593               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.6240963641577594  |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @trace_probs_0
  @trace_probs
  Scenario: trace_probs_0
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_tests should decrease

  @trace_probs_1
  @trace_probs
  Scenario: trace_probs_1
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    Then the cum_tests should decrease

  @trace_probs_2
  @trace_probs
  Scenario: trace_probs_2
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_tests should decrease

  @trace_probs_3
  @trace_probs
  Scenario: trace_probs_3
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_tests should decrease

  @trace_probs_4
  @trace_probs
  Scenario: trace_probs_4
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_tests should decrease

  @trace_probs_5
  @trace_probs
  Scenario: trace_probs_5
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_tests should decrease

  @trace_probs_6
  @trace_probs
  Scenario: trace_probs_6
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    Then the cum_tests should decrease

  @trace_probs_7
  @trace_probs
  Scenario: trace_probs_7
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_tests should decrease

  @trace_probs_8
  @trace_probs
  Scenario: trace_probs_8
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.27025117739698024
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.2404924383007006  |
    Then the cum_tests should decrease

  @trace_probs_9
  @trace_probs
  Scenario: trace_probs_9
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.27025117739698024
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    Then the cum_tests should decrease

  @trace_probs_10
  @trace_probs
  Scenario: trace_probs_10
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    Then the cum_tests should decrease

  @trace_probs_11
  @trace_probs
  Scenario: trace_probs_11
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.27025117739698024
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_tests should decrease

  @trace_probs_12
  @trace_probs
  Scenario: trace_probs_12
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_tests should decrease

  @trace_probs_13
  @trace_probs
  Scenario: trace_probs_13
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_tests should decrease

  @trace_probs_14
  @trace_probs
  Scenario: trace_probs_14
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_tests should decrease

  @trace_probs_15
  @trace_probs
  Scenario: trace_probs_15
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_tests should decrease

  @trace_probs_16
  @trace_probs
  Scenario: trace_probs_16
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    Then the cum_tests should decrease

  @trace_probs_17
  @trace_probs
  Scenario: trace_probs_17
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    Then the cum_tests should decrease

  @trace_probs_18
  @trace_probs
  Scenario: trace_probs_18
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_tests should decrease

  @trace_probs_19
  @trace_probs
  Scenario: trace_probs_19
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_tests should decrease

  @trace_probs_20
  @trace_probs
  Scenario: trace_probs_20
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_tests should decrease

  @trace_probs_21
  @trace_probs
  Scenario: trace_probs_21
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.2404924383007006  |
    Then the cum_tests should decrease

  @trace_probs_22
  @trace_probs
  Scenario: trace_probs_22
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_tests should decrease

  @trace_probs_23
  @trace_probs
  Scenario: trace_probs_23
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_tests should decrease

  @trace_probs_24
  @trace_probs
  Scenario: trace_probs_24
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_tests should decrease

  @trace_probs_25
  @trace_probs
  Scenario: trace_probs_25
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.27025117739698024
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.2404924383007006  |
    Then the cum_tests should decrease

  @trace_probs_26
  @trace_probs
  Scenario: trace_probs_26
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.27025117739698024
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_tests should decrease

  @trace_probs_27
  @trace_probs
  Scenario: trace_probs_27
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_tests should decrease

  @trace_probs_28
  @trace_probs
  Scenario: trace_probs_28
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_tests should decrease

  @trace_probs_29
  @trace_probs
  Scenario: trace_probs_29
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_tests should decrease

  @trace_probs_30
  @trace_probs
  Scenario: trace_probs_30
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_tests should decrease

  @trace_probs_31
  @trace_probs
  Scenario: trace_probs_31
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_tests should decrease

  @trace_probs_32
  @trace_probs
  Scenario: trace_probs_32
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.27025117739698024
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_tests should decrease

  @trace_probs_0
  @trace_probs
  Scenario: trace_probs_0
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_quarantined should decrease

  @trace_probs_1
  @trace_probs
  Scenario: trace_probs_1
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_quarantined should decrease

  @trace_probs_2
  @trace_probs
  Scenario: trace_probs_2
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_quarantined should decrease

  @trace_probs_3
  @trace_probs
  Scenario: trace_probs_3
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    Then the cum_quarantined should decrease

  @trace_probs_4
  @trace_probs
  Scenario: trace_probs_4
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_quarantined should decrease

  @trace_probs_5
  @trace_probs
  Scenario: trace_probs_5
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_quarantined should decrease

  @trace_probs_6
  @trace_probs
  Scenario: trace_probs_6
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    Then the cum_quarantined should decrease

  @trace_probs_7
  @trace_probs
  Scenario: trace_probs_7
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_quarantined should decrease

  @trace_probs_8
  @trace_probs
  Scenario: trace_probs_8
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.27025117739698024
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_quarantined should decrease

  @trace_probs_9
  @trace_probs
  Scenario: trace_probs_9
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.27025117739698024
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_quarantined should decrease

  @trace_probs_10
  @trace_probs
  Scenario: trace_probs_10
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_quarantined should decrease

  @trace_probs_11
  @trace_probs
  Scenario: trace_probs_11
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.27025117739698024
    And effect modifier values
    | modifier        | value              |
    | n_days          | 66                 |
    | quar_period     | 11                 |
    | pop_size        | 10000              |
    | pop_infected    | 400                |
    | symp_prob       | 0.5299357265511195 |
    | asymp_prob      | 0.5320606162934023 |
    | symp_quar_prob  | 0.0456075960115124 |
    | asymp_quar_prob | 0.5362647235083882 |
    Then the cum_quarantined should decrease

  @trace_probs_12
  @trace_probs
  Scenario: trace_probs_12
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_quarantined should decrease

  @trace_probs_13
  @trace_probs
  Scenario: trace_probs_13
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_quarantined should decrease

  @trace_probs_14
  @trace_probs
  Scenario: trace_probs_14
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_quarantined should decrease

  @trace_probs_15
  @trace_probs
  Scenario: trace_probs_15
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_quarantined should decrease

  @trace_probs_16
  @trace_probs
  Scenario: trace_probs_16
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    Then the cum_quarantined should decrease

  @trace_probs_17
  @trace_probs
  Scenario: trace_probs_17
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_quarantined should decrease

  @trace_probs_18
  @trace_probs
  Scenario: trace_probs_18
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_quarantined should decrease

  @trace_probs_19
  @trace_probs
  Scenario: trace_probs_19
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_size        | 17019               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_quarantined should decrease

  @trace_probs_20
  @trace_probs
  Scenario: trace_probs_20
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    Then the cum_quarantined should decrease

  @trace_probs_21
  @trace_probs
  Scenario: trace_probs_21
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.2404924383007006  |
    Then the cum_quarantined should decrease

  @trace_probs_22
  @trace_probs
  Scenario: trace_probs_22
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_quarantined should decrease

  @trace_probs_23
  @trace_probs
  Scenario: trace_probs_23
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_quarantined should decrease

  @trace_probs_24
  @trace_probs
  Scenario: trace_probs_24
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_quarantined should decrease

  @trace_probs_25
  @trace_probs
  Scenario: trace_probs_25
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.27025117739698024
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_quarantined should decrease

  @trace_probs_26
  @trace_probs
  Scenario: trace_probs_26
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.27025117739698024
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_quarantined should decrease

  @trace_probs_27
  @trace_probs
  Scenario: trace_probs_27
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.6280014380485361  |
    Then the cum_quarantined should decrease

  @trace_probs_28
  @trace_probs
  Scenario: trace_probs_28
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    Then the cum_quarantined should decrease

  @trace_probs_29
  @trace_probs
  Scenario: trace_probs_29
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_quarantined should decrease

  @trace_probs_30
  @trace_probs
  Scenario: trace_probs_30
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_quarantined should decrease

  @trace_probs_31
  @trace_probs
  Scenario: trace_probs_31
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    Then the cum_quarantined should decrease

  @trace_probs_32
  @trace_probs
  Scenario: trace_probs_32
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.27025117739698024
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.6280014380485361  |
    Then the cum_quarantined should decrease

  @trace_probs_0
  @trace_probs
  Scenario: trace_probs_0
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_infections should decrease

  @trace_probs_1
  @trace_probs
  Scenario: trace_probs_1
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    Then the cum_infections should decrease

  @trace_probs_2
  @trace_probs
  Scenario: trace_probs_2
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_infections should decrease

  @trace_probs_3
  @trace_probs
  Scenario: trace_probs_3
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_infections should decrease

  @trace_probs_4
  @trace_probs
  Scenario: trace_probs_4
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_infections should decrease

  @trace_probs_5
  @trace_probs
  Scenario: trace_probs_5
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_infections should decrease

  @trace_probs_6
  @trace_probs
  Scenario: trace_probs_6
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    Then the cum_infections should decrease

  @trace_probs_7
  @trace_probs
  Scenario: trace_probs_7
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_infections should decrease

  @trace_probs_8
  @trace_probs
  Scenario: trace_probs_8
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.27025117739698024
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.2404924383007006  |
    Then the cum_infections should decrease

  @trace_probs_9
  @trace_probs
  Scenario: trace_probs_9
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.27025117739698024
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_infections should decrease

  @trace_probs_10
  @trace_probs
  Scenario: trace_probs_10
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    Then the cum_infections should decrease

  @trace_probs_11
  @trace_probs
  Scenario: trace_probs_11
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.27025117739698024
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_infections should decrease

  @trace_probs_12
  @trace_probs
  Scenario: trace_probs_12
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_infections should decrease

  @trace_probs_13
  @trace_probs
  Scenario: trace_probs_13
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_infections should decrease

  @trace_probs_14
  @trace_probs
  Scenario: trace_probs_14
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_infections should decrease

  @trace_probs_15
  @trace_probs
  Scenario: trace_probs_15
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_infections should decrease

  @trace_probs_16
  @trace_probs
  Scenario: trace_probs_16
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    Then the cum_infections should decrease

  @trace_probs_17
  @trace_probs
  Scenario: trace_probs_17
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_infections should decrease

  @trace_probs_18
  @trace_probs
  Scenario: trace_probs_18
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_infections should decrease

  @trace_probs_19
  @trace_probs
  Scenario: trace_probs_19
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_infections should decrease

  @trace_probs_20
  @trace_probs
  Scenario: trace_probs_20
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    Then the cum_infections should decrease

  @trace_probs_21
  @trace_probs
  Scenario: trace_probs_21
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.2404924383007006  |
    Then the cum_infections should decrease

  @trace_probs_22
  @trace_probs
  Scenario: trace_probs_22
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_infections should decrease

  @trace_probs_23
  @trace_probs
  Scenario: trace_probs_23
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    Then the cum_infections should decrease

  @trace_probs_24
  @trace_probs
  Scenario: trace_probs_24
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_infections should decrease

  @trace_probs_25
  @trace_probs
  Scenario: trace_probs_25
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.27025117739698024
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_infections should decrease

  @trace_probs_26
  @trace_probs
  Scenario: trace_probs_26
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.27025117739698024
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_infections should decrease

  @trace_probs_27
  @trace_probs
  Scenario: trace_probs_27
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.6280014380485361  |
    Then the cum_infections should decrease

  @trace_probs_28
  @trace_probs
  Scenario: trace_probs_28
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_infections should decrease

  @trace_probs_29
  @trace_probs
  Scenario: trace_probs_29
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_infections should decrease

  @trace_probs_30
  @trace_probs
  Scenario: trace_probs_30
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    Then the cum_infections should decrease

  @trace_probs_31
  @trace_probs
  Scenario: trace_probs_31
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    Then the cum_infections should decrease

  @trace_probs_32
  @trace_probs
  Scenario: trace_probs_32
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.27025117739698024
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.6280014380485361  |
    Then the cum_infections should decrease

  @trace_probs_0
  @trace_probs
  Scenario: trace_probs_0
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_deaths should remain the same

  @trace_probs_1
  @trace_probs
  Scenario: trace_probs_1
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    Then the cum_deaths should remain the same

  @trace_probs_2
  @trace_probs
  Scenario: trace_probs_2
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.6280014380485361  |
    Then the cum_deaths should remain the same

  @trace_probs_3
  @trace_probs
  Scenario: trace_probs_3
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_deaths should remain the same

  @trace_probs_4
  @trace_probs
  Scenario: trace_probs_4
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_deaths should remain the same

  @trace_probs_5
  @trace_probs
  Scenario: trace_probs_5
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_deaths should remain the same

  @trace_probs_6
  @trace_probs
  Scenario: trace_probs_6
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    Then the cum_deaths should remain the same

  @trace_probs_7
  @trace_probs
  Scenario: trace_probs_7
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_deaths should remain the same

  @trace_probs_8
  @trace_probs
  Scenario: trace_probs_8
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.27025117739698024
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_deaths should remain the same

  @trace_probs_9
  @trace_probs
  Scenario: trace_probs_9
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.27025117739698024
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_deaths should remain the same

  @trace_probs_10
  @trace_probs
  Scenario: trace_probs_10
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_deaths should remain the same

  @trace_probs_11
  @trace_probs
  Scenario: trace_probs_11
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.27025117739698024
    And effect modifier values
    | modifier        | value              |
    | n_days          | 66                 |
    | quar_period     | 13                 |
    | pop_size        | 13013              |
    | pop_infected    | 400                |
    | symp_prob       | 0.3946267859089032 |
    | asymp_prob      | 0.5320606162934023 |
    | symp_quar_prob  | 0.0456075960115124 |
    | asymp_quar_prob | 0.5362647235083882 |
    Then the cum_deaths should remain the same

  @trace_probs_12
  @trace_probs
  Scenario: trace_probs_12
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_deaths should remain the same

  @trace_probs_13
  @trace_probs
  Scenario: trace_probs_13
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_deaths should remain the same

  @trace_probs_14
  @trace_probs
  Scenario: trace_probs_14
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_deaths should remain the same

  @trace_probs_15
  @trace_probs
  Scenario: trace_probs_15
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    Then the cum_deaths should remain the same

  @trace_probs_16
  @trace_probs
  Scenario: trace_probs_16
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_deaths should remain the same

  @trace_probs_17
  @trace_probs
  Scenario: trace_probs_17
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_deaths should remain the same

  @trace_probs_18
  @trace_probs
  Scenario: trace_probs_18
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_deaths should remain the same

  @trace_probs_19
  @trace_probs
  Scenario: trace_probs_19
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_size        | 17019               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_deaths should remain the same

  @trace_probs_20
  @trace_probs
  Scenario: trace_probs_20
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    Then the cum_deaths should remain the same

  @trace_probs_21
  @trace_probs
  Scenario: trace_probs_21
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.2404924383007006  |
    Then the cum_deaths should remain the same

  @trace_probs_22
  @trace_probs
  Scenario: trace_probs_22
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_deaths should remain the same

  @trace_probs_23
  @trace_probs
  Scenario: trace_probs_23
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_deaths should remain the same

  @trace_probs_24
  @trace_probs
  Scenario: trace_probs_24
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_deaths should remain the same

  @trace_probs_25
  @trace_probs
  Scenario: trace_probs_25
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.27025117739698024
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_deaths should remain the same

  @trace_probs_26
  @trace_probs
  Scenario: trace_probs_26
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.27025117739698024
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_deaths should remain the same

  @trace_probs_27
  @trace_probs
  Scenario: trace_probs_27
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_deaths should remain the same

  @trace_probs_28
  @trace_probs
  Scenario: trace_probs_28
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    Then the cum_deaths should remain the same

  @trace_probs_29
  @trace_probs
  Scenario: trace_probs_29
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_deaths should remain the same

  @trace_probs_30
  @trace_probs
  Scenario: trace_probs_30
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_deaths should remain the same

  @trace_probs_31
  @trace_probs
  Scenario: trace_probs_31
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    Then the cum_deaths should remain the same

  @trace_probs_32
  @trace_probs
  Scenario: trace_probs_32
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.27025117739698024
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    Then the cum_deaths should remain the same

  @n_days__1_1_0
  @n_days
  Scenario: n_days -- @1.1_0
    Given we run the model with n_days=80
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @n_days__1_1_1
  @n_days
  Scenario: n_days -- @1.1_1
    Given we run the model with n_days=80
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_tests should increase

  @n_days__1_1_2
  @n_days
  Scenario: n_days -- @1.1_2
    Given we run the model with n_days=80
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_tests should increase

  @n_days__1_1_3
  @n_days
  Scenario: n_days -- @1.1_3
    Given we run the model with n_days=80
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_tests should increase

  @n_days__1_1_4
  @n_days
  Scenario: n_days -- @1.1_4
    Given we run the model with n_days=80
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @n_days__1_1_5
  @n_days
  Scenario: n_days -- @1.1_5
    Given we run the model with n_days=80
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_tests should increase

  @n_days__1_1_6
  @n_days
  Scenario: n_days -- @1.1_6
    Given we run the model with n_days=80
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @n_days__1_1_7
  @n_days
  Scenario: n_days -- @1.1_7
    Given we run the model with n_days=80
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_tests should increase

  @n_days__1_1_8
  @n_days
  Scenario: n_days -- @1.1_8
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @n_days__1_1_9
  @n_days
  Scenario: n_days -- @1.1_9
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @n_days__1_1_10
  @n_days
  Scenario: n_days -- @1.1_10
    Given we run the model with n_days=66
    When we run the model with n_days=80
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @n_days__1_1_11
  @n_days
  Scenario: n_days -- @1.1_11
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @n_days__1_1_12
  @n_days
  Scenario: n_days -- @1.1_12
    Given we run the model with n_days=66
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @n_days__1_1_13
  @n_days
  Scenario: n_days -- @1.1_13
    Given we run the model with n_days=66
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @n_days__1_1_14
  @n_days
  Scenario: n_days -- @1.1_14
    Given we run the model with n_days=66
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @n_days__1_1_15
  @n_days
  Scenario: n_days -- @1.1_15
    Given we run the model with n_days=66
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_tests should increase

  @n_days__1_1_16
  @n_days
  Scenario: n_days -- @1.1_16
    Given we run the model with n_days=66
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @n_days__1_1_17
  @n_days
  Scenario: n_days -- @1.1_17
    Given we run the model with n_days=66
    When we run the model with n_days=80
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_tests should increase

  @n_days__1_1_18
  @n_days
  Scenario: n_days -- @1.1_18
    Given we run the model with n_days=66
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @n_days__1_1_19
  @n_days
  Scenario: n_days -- @1.1_19
    Given we run the model with n_days=66
    When we run the model with n_days=80
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @n_days__1_1_20
  @n_days
  Scenario: n_days -- @1.1_20
    Given we run the model with n_days=66
    When we run the model with n_days=80
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @n_days__1_1_21
  @n_days
  Scenario: n_days -- @1.1_21
    Given we run the model with n_days=66
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_tests should increase

  @n_days__1_1_22
  @n_days
  Scenario: n_days -- @1.1_22
    Given we run the model with n_days=66
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @n_days__1_1_23
  @n_days
  Scenario: n_days -- @1.1_23
    Given we run the model with n_days=66
    When we run the model with n_days=80
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @n_days__1_1_24
  @n_days
  Scenario: n_days -- @1.1_24
    Given we run the model with n_days=66
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @n_days__1_1_25
  @n_days
  Scenario: n_days -- @1.1_25
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @n_days__1_1_26
  @n_days
  Scenario: n_days -- @1.1_26
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @n_days__1_1_27
  @n_days
  Scenario: n_days -- @1.1_27
    Given we run the model with n_days=66
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @n_days__1_1_28
  @n_days
  Scenario: n_days -- @1.1_28
    Given we run the model with n_days=66
    When we run the model with n_days=80
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @n_days__1_1_29
  @n_days
  Scenario: n_days -- @1.1_29
    Given we run the model with n_days=66
    When we run the model with n_days=80
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @n_days__1_1_30
  @n_days
  Scenario: n_days -- @1.1_30
    Given we run the model with n_days=66
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_tests should increase

  @n_days__1_1_31
  @n_days
  Scenario: n_days -- @1.1_31
    Given we run the model with n_days=66
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_tests should increase

  @n_days__1_1_32
  @n_days
  Scenario: n_days -- @1.1_32
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_tests should increase

  @n_days__1_2_0
  @n_days
  Scenario: n_days -- @1.2_0
    Given we run the model with n_days=80
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @n_days__1_2_1
  @n_days
  Scenario: n_days -- @1.2_1
    Given we run the model with n_days=80
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @n_days__1_2_2
  @n_days
  Scenario: n_days -- @1.2_2
    Given we run the model with n_days=80
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @n_days__1_2_3
  @n_days
  Scenario: n_days -- @1.2_3
    Given we run the model with n_days=80
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @n_days__1_2_4
  @n_days
  Scenario: n_days -- @1.2_4
    Given we run the model with n_days=80
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @n_days__1_2_5
  @n_days
  Scenario: n_days -- @1.2_5
    Given we run the model with n_days=80
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_quarantined should increase

  @n_days__1_2_6
  @n_days
  Scenario: n_days -- @1.2_6
    Given we run the model with n_days=80
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_quarantined should increase

  @n_days__1_2_7
  @n_days
  Scenario: n_days -- @1.2_7
    Given we run the model with n_days=80
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @n_days__1_2_8
  @n_days
  Scenario: n_days -- @1.2_8
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_quarantined should increase

  @n_days__1_2_9
  @n_days
  Scenario: n_days -- @1.2_9
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @n_days__1_2_10
  @n_days
  Scenario: n_days -- @1.2_10
    Given we run the model with n_days=66
    When we run the model with n_days=80
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @n_days__1_2_11
  @n_days
  Scenario: n_days -- @1.2_11
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @n_days__1_2_12
  @n_days
  Scenario: n_days -- @1.2_12
    Given we run the model with n_days=66
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @n_days__1_2_13
  @n_days
  Scenario: n_days -- @1.2_13
    Given we run the model with n_days=66
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @n_days__1_2_14
  @n_days
  Scenario: n_days -- @1.2_14
    Given we run the model with n_days=66
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @n_days__1_2_15
  @n_days
  Scenario: n_days -- @1.2_15
    Given we run the model with n_days=66
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_quarantined should increase

  @n_days__1_2_16
  @n_days
  Scenario: n_days -- @1.2_16
    Given we run the model with n_days=66
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @n_days__1_2_17
  @n_days
  Scenario: n_days -- @1.2_17
    Given we run the model with n_days=66
    When we run the model with n_days=80
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @n_days__1_2_18
  @n_days
  Scenario: n_days -- @1.2_18
    Given we run the model with n_days=66
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value              |
    | quar_period     | 11                 |
    | pop_size        | 10000              |
    | pop_infected    | 400                |
    | symp_prob       | 0.7292420114738518 |
    | asymp_prob      | 0.6240963641577594 |
    | symp_quar_prob  | 0.0456075960115124 |
    | asymp_quar_prob | 0.5362647235083882 |
    | trace_probs     | 0.4179307148516287 |
    Then the cum_quarantined should increase

  @n_days__1_2_19
  @n_days
  Scenario: n_days -- @1.2_19
    Given we run the model with n_days=66
    When we run the model with n_days=80
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @n_days__1_2_20
  @n_days
  Scenario: n_days -- @1.2_20
    Given we run the model with n_days=66
    When we run the model with n_days=80
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @n_days__1_2_21
  @n_days
  Scenario: n_days -- @1.2_21
    Given we run the model with n_days=66
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @n_days__1_2_22
  @n_days
  Scenario: n_days -- @1.2_22
    Given we run the model with n_days=66
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @n_days__1_2_23
  @n_days
  Scenario: n_days -- @1.2_23
    Given we run the model with n_days=66
    When we run the model with n_days=80
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_quarantined should increase

  @n_days__1_2_24
  @n_days
  Scenario: n_days -- @1.2_24
    Given we run the model with n_days=66
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_quarantined should increase

  @n_days__1_2_25
  @n_days
  Scenario: n_days -- @1.2_25
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @n_days__1_2_26
  @n_days
  Scenario: n_days -- @1.2_26
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @n_days__1_2_27
  @n_days
  Scenario: n_days -- @1.2_27
    Given we run the model with n_days=66
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_quarantined should increase

  @n_days__1_2_28
  @n_days
  Scenario: n_days -- @1.2_28
    Given we run the model with n_days=66
    When we run the model with n_days=80
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @n_days__1_2_29
  @n_days
  Scenario: n_days -- @1.2_29
    Given we run the model with n_days=66
    When we run the model with n_days=80
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @n_days__1_2_30
  @n_days
  Scenario: n_days -- @1.2_30
    Given we run the model with n_days=66
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @n_days__1_2_31
  @n_days
  Scenario: n_days -- @1.2_31
    Given we run the model with n_days=66
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @n_days__1_2_32
  @n_days
  Scenario: n_days -- @1.2_32
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_quarantined should increase

  @n_days__1_3_0
  @n_days
  Scenario: n_days -- @1.3_0
    Given we run the model with n_days=80
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @n_days__1_3_1
  @n_days
  Scenario: n_days -- @1.3_1
    Given we run the model with n_days=80
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_infections should increase

  @n_days__1_3_2
  @n_days
  Scenario: n_days -- @1.3_2
    Given we run the model with n_days=80
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should increase

  @n_days__1_3_3
  @n_days
  Scenario: n_days -- @1.3_3
    Given we run the model with n_days=80
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @n_days__1_3_4
  @n_days
  Scenario: n_days -- @1.3_4
    Given we run the model with n_days=80
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @n_days__1_3_5
  @n_days
  Scenario: n_days -- @1.3_5
    Given we run the model with n_days=80
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_infections should increase

  @n_days__1_3_6
  @n_days
  Scenario: n_days -- @1.3_6
    Given we run the model with n_days=80
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should increase

  @n_days__1_3_7
  @n_days
  Scenario: n_days -- @1.3_7
    Given we run the model with n_days=80
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_infections should increase

  @n_days__1_3_8
  @n_days
  Scenario: n_days -- @1.3_8
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @n_days__1_3_9
  @n_days
  Scenario: n_days -- @1.3_9
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should increase

  @n_days__1_3_10
  @n_days
  Scenario: n_days -- @1.3_10
    Given we run the model with n_days=66
    When we run the model with n_days=80
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @n_days__1_3_11
  @n_days
  Scenario: n_days -- @1.3_11
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @n_days__1_3_12
  @n_days
  Scenario: n_days -- @1.3_12
    Given we run the model with n_days=66
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @n_days__1_3_13
  @n_days
  Scenario: n_days -- @1.3_13
    Given we run the model with n_days=66
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @n_days__1_3_14
  @n_days
  Scenario: n_days -- @1.3_14
    Given we run the model with n_days=66
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @n_days__1_3_15
  @n_days
  Scenario: n_days -- @1.3_15
    Given we run the model with n_days=66
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @n_days__1_3_16
  @n_days
  Scenario: n_days -- @1.3_16
    Given we run the model with n_days=66
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should increase

  @n_days__1_3_17
  @n_days
  Scenario: n_days -- @1.3_17
    Given we run the model with n_days=66
    When we run the model with n_days=80
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_infections should increase

  @n_days__1_3_18
  @n_days
  Scenario: n_days -- @1.3_18
    Given we run the model with n_days=66
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value              |
    | quar_period     | 11                 |
    | pop_size        | 10000              |
    | pop_infected    | 400                |
    | symp_prob       | 0.3946267859089032 |
    | asymp_prob      | 0.5320606162934023 |
    | symp_quar_prob  | 0.0456075960115124 |
    | asymp_quar_prob | 0.5362647235083882 |
    | trace_probs     | 0.4179307148516287 |
    Then the cum_infections should increase

  @n_days__1_3_19
  @n_days
  Scenario: n_days -- @1.3_19
    Given we run the model with n_days=66
    When we run the model with n_days=80
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @n_days__1_3_20
  @n_days
  Scenario: n_days -- @1.3_20
    Given we run the model with n_days=66
    When we run the model with n_days=80
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @n_days__1_3_21
  @n_days
  Scenario: n_days -- @1.3_21
    Given we run the model with n_days=66
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @n_days__1_3_22
  @n_days
  Scenario: n_days -- @1.3_22
    Given we run the model with n_days=66
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @n_days__1_3_23
  @n_days
  Scenario: n_days -- @1.3_23
    Given we run the model with n_days=66
    When we run the model with n_days=80
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_infections should increase

  @n_days__1_3_24
  @n_days
  Scenario: n_days -- @1.3_24
    Given we run the model with n_days=66
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_infections should increase

  @n_days__1_3_25
  @n_days
  Scenario: n_days -- @1.3_25
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @n_days__1_3_26
  @n_days
  Scenario: n_days -- @1.3_26
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @n_days__1_3_27
  @n_days
  Scenario: n_days -- @1.3_27
    Given we run the model with n_days=66
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @n_days__1_3_28
  @n_days
  Scenario: n_days -- @1.3_28
    Given we run the model with n_days=66
    When we run the model with n_days=80
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should increase

  @n_days__1_3_29
  @n_days
  Scenario: n_days -- @1.3_29
    Given we run the model with n_days=66
    When we run the model with n_days=80
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @n_days__1_3_30
  @n_days
  Scenario: n_days -- @1.3_30
    Given we run the model with n_days=66
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @n_days__1_3_31
  @n_days
  Scenario: n_days -- @1.3_31
    Given we run the model with n_days=66
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should increase

  @n_days__1_3_32
  @n_days
  Scenario: n_days -- @1.3_32
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should increase

  @n_days__1_4_0
  @n_days
  Scenario: n_days -- @1.4_0
    Given we run the model with n_days=80
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @n_days__1_4_1
  @n_days
  Scenario: n_days -- @1.4_1
    Given we run the model with n_days=80
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_deaths should increase

  @n_days__1_4_2
  @n_days
  Scenario: n_days -- @1.4_2
    Given we run the model with n_days=80
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @n_days__1_4_3
  @n_days
  Scenario: n_days -- @1.4_3
    Given we run the model with n_days=80
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @n_days__1_4_4
  @n_days
  Scenario: n_days -- @1.4_4
    Given we run the model with n_days=80
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @n_days__1_4_5
  @n_days
  Scenario: n_days -- @1.4_5
    Given we run the model with n_days=80
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_deaths should increase

  @n_days__1_4_6
  @n_days
  Scenario: n_days -- @1.4_6
    Given we run the model with n_days=80
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @n_days__1_4_7
  @n_days
  Scenario: n_days -- @1.4_7
    Given we run the model with n_days=80
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_deaths should increase

  @n_days__1_4_8
  @n_days
  Scenario: n_days -- @1.4_8
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @n_days__1_4_9
  @n_days
  Scenario: n_days -- @1.4_9
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @n_days__1_4_10
  @n_days
  Scenario: n_days -- @1.4_10
    Given we run the model with n_days=66
    When we run the model with n_days=80
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @n_days__1_4_11
  @n_days
  Scenario: n_days -- @1.4_11
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @n_days__1_4_12
  @n_days
  Scenario: n_days -- @1.4_12
    Given we run the model with n_days=66
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @n_days__1_4_13
  @n_days
  Scenario: n_days -- @1.4_13
    Given we run the model with n_days=66
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @n_days__1_4_14
  @n_days
  Scenario: n_days -- @1.4_14
    Given we run the model with n_days=66
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @n_days__1_4_15
  @n_days
  Scenario: n_days -- @1.4_15
    Given we run the model with n_days=66
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_deaths should increase

  @n_days__1_4_16
  @n_days
  Scenario: n_days -- @1.4_16
    Given we run the model with n_days=66
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 13                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_deaths should increase

  @n_days__1_4_17
  @n_days
  Scenario: n_days -- @1.4_17
    Given we run the model with n_days=66
    When we run the model with n_days=80
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @n_days__1_4_18
  @n_days
  Scenario: n_days -- @1.4_18
    Given we run the model with n_days=66
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_deaths should increase

  @n_days__1_4_19
  @n_days
  Scenario: n_days -- @1.4_19
    Given we run the model with n_days=66
    When we run the model with n_days=80
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @n_days__1_4_20
  @n_days
  Scenario: n_days -- @1.4_20
    Given we run the model with n_days=66
    When we run the model with n_days=80
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @n_days__1_4_21
  @n_days
  Scenario: n_days -- @1.4_21
    Given we run the model with n_days=66
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_deaths should increase

  @n_days__1_4_22
  @n_days
  Scenario: n_days -- @1.4_22
    Given we run the model with n_days=66
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @n_days__1_4_23
  @n_days
  Scenario: n_days -- @1.4_23
    Given we run the model with n_days=66
    When we run the model with n_days=80
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @n_days__1_4_24
  @n_days
  Scenario: n_days -- @1.4_24
    Given we run the model with n_days=66
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @n_days__1_4_25
  @n_days
  Scenario: n_days -- @1.4_25
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @n_days__1_4_26
  @n_days
  Scenario: n_days -- @1.4_26
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @n_days__1_4_27
  @n_days
  Scenario: n_days -- @1.4_27
    Given we run the model with n_days=66
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @n_days__1_4_28
  @n_days
  Scenario: n_days -- @1.4_28
    Given we run the model with n_days=66
    When we run the model with n_days=80
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_deaths should increase

  @n_days__1_4_29
  @n_days
  Scenario: n_days -- @1.4_29
    Given we run the model with n_days=66
    When we run the model with n_days=80
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @n_days__1_4_30
  @n_days
  Scenario: n_days -- @1.4_30
    Given we run the model with n_days=66
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_deaths should increase

  @n_days__1_4_31
  @n_days
  Scenario: n_days -- @1.4_31
    Given we run the model with n_days=66
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_deaths should increase

  @n_days__1_4_32
  @n_days
  Scenario: n_days -- @1.4_32
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @pop_size__1_1_0
  @pop_size
  Scenario: pop_size -- @1.1_0
    Given we run the model with pop_size=10000
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @pop_size__1_1_1
  @pop_size
  Scenario: pop_size -- @1.1_1
    Given we run the model with pop_size=10000
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 13                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_tests should increase

  @pop_size__1_1_2
  @pop_size
  Scenario: pop_size -- @1.1_2
    Given we run the model with pop_size=10000
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_tests should increase

  @pop_size__1_1_3
  @pop_size
  Scenario: pop_size -- @1.1_3
    Given we run the model with pop_size=10000
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_tests should increase

  @pop_size__1_1_4
  @pop_size
  Scenario: pop_size -- @1.1_4
    Given we run the model with pop_size=10000
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @pop_size__1_1_5
  @pop_size
  Scenario: pop_size -- @1.1_5
    Given we run the model with pop_size=10000
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_tests should increase

  @pop_size__1_1_6
  @pop_size
  Scenario: pop_size -- @1.1_6
    Given we run the model with pop_size=10000
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_tests should increase

  @pop_size__1_1_7
  @pop_size
  Scenario: pop_size -- @1.1_7
    Given we run the model with pop_size=10000
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_tests should increase

  @pop_size__1_1_8
  @pop_size
  Scenario: pop_size -- @1.1_8
    Given we run the model with pop_size=10000
    When we run the model with pop_size=11593
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_tests should increase

  @pop_size__1_1_9
  @pop_size
  Scenario: pop_size -- @1.1_9
    Given we run the model with pop_size=10000
    When we run the model with pop_size=11593
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_tests should increase

  @pop_size__1_1_10
  @pop_size
  Scenario: pop_size -- @1.1_10
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_tests should increase

  @pop_size__1_1_11
  @pop_size
  Scenario: pop_size -- @1.1_11
    Given we run the model with pop_size=10000
    When we run the model with pop_size=11593
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_tests should increase

  @pop_size__1_1_12
  @pop_size
  Scenario: pop_size -- @1.1_12
    Given we run the model with pop_size=11593
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @pop_size__1_1_13
  @pop_size
  Scenario: pop_size -- @1.1_13
    Given we run the model with pop_size=11593
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @pop_size__1_1_14
  @pop_size
  Scenario: pop_size -- @1.1_14
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @pop_size__1_1_15
  @pop_size
  Scenario: pop_size -- @1.1_15
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @pop_size__1_1_16
  @pop_size
  Scenario: pop_size -- @1.1_16
    Given we run the model with pop_size=11593
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @pop_size__1_1_17
  @pop_size
  Scenario: pop_size -- @1.1_17
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @pop_size__1_1_18
  @pop_size
  Scenario: pop_size -- @1.1_18
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_tests should increase

  @pop_size__1_1_19
  @pop_size
  Scenario: pop_size -- @1.1_19
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @pop_size__1_1_20
  @pop_size
  Scenario: pop_size -- @1.1_20
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @pop_size__1_1_21
  @pop_size
  Scenario: pop_size -- @1.1_21
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @pop_size__1_1_22
  @pop_size
  Scenario: pop_size -- @1.1_22
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @pop_size__1_1_23
  @pop_size
  Scenario: pop_size -- @1.1_23
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_tests should increase

  @pop_size__1_1_24
  @pop_size
  Scenario: pop_size -- @1.1_24
    Given we run the model with pop_size=11593
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @pop_size__1_1_25
  @pop_size
  Scenario: pop_size -- @1.1_25
    Given we run the model with pop_size=10000
    When we run the model with pop_size=11593
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_tests should increase

  @pop_size__1_1_26
  @pop_size
  Scenario: pop_size -- @1.1_26
    Given we run the model with pop_size=10000
    When we run the model with pop_size=11593
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @pop_size__1_1_27
  @pop_size
  Scenario: pop_size -- @1.1_27
    Given we run the model with pop_size=11593
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_tests should increase

  @pop_size__1_1_28
  @pop_size
  Scenario: pop_size -- @1.1_28
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @pop_size__1_1_29
  @pop_size
  Scenario: pop_size -- @1.1_29
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @pop_size__1_1_30
  @pop_size
  Scenario: pop_size -- @1.1_30
    Given we run the model with pop_size=11593
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_tests should increase

  @pop_size__1_1_31
  @pop_size
  Scenario: pop_size -- @1.1_31
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_tests should increase

  @pop_size__1_1_32
  @pop_size
  Scenario: pop_size -- @1.1_32
    Given we run the model with pop_size=10000
    When we run the model with pop_size=11593
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @pop_size__1_2_0
  @pop_size
  Scenario: pop_size -- @1.2_0
    Given we run the model with pop_size=10000
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_size__1_2_1
  @pop_size
  Scenario: pop_size -- @1.2_1
    Given we run the model with pop_size=10000
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_size__1_2_2
  @pop_size
  Scenario: pop_size -- @1.2_2
    Given we run the model with pop_size=10000
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_quarantined should increase

  @pop_size__1_2_3
  @pop_size
  Scenario: pop_size -- @1.2_3
    Given we run the model with pop_size=10000
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_quarantined should increase

  @pop_size__1_2_4
  @pop_size
  Scenario: pop_size -- @1.2_4
    Given we run the model with pop_size=10000
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_size__1_2_5
  @pop_size
  Scenario: pop_size -- @1.2_5
    Given we run the model with pop_size=10000
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_quarantined should increase

  @pop_size__1_2_6
  @pop_size
  Scenario: pop_size -- @1.2_6
    Given we run the model with pop_size=10000
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_size__1_2_7
  @pop_size
  Scenario: pop_size -- @1.2_7
    Given we run the model with pop_size=10000
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_quarantined should increase

  @pop_size__1_2_8
  @pop_size
  Scenario: pop_size -- @1.2_8
    Given we run the model with pop_size=10000
    When we run the model with pop_size=11593
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_size__1_2_9
  @pop_size
  Scenario: pop_size -- @1.2_9
    Given we run the model with pop_size=10000
    When we run the model with pop_size=11593
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_size__1_2_10
  @pop_size
  Scenario: pop_size -- @1.2_10
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_size__1_2_11
  @pop_size
  Scenario: pop_size -- @1.2_11
    Given we run the model with pop_size=10000
    When we run the model with pop_size=11593
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_quarantined should increase

  @pop_size__1_2_12
  @pop_size
  Scenario: pop_size -- @1.2_12
    Given we run the model with pop_size=11593
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_size__1_2_13
  @pop_size
  Scenario: pop_size -- @1.2_13
    Given we run the model with pop_size=11593
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_size__1_2_14
  @pop_size
  Scenario: pop_size -- @1.2_14
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_size__1_2_15
  @pop_size
  Scenario: pop_size -- @1.2_15
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_size__1_2_16
  @pop_size
  Scenario: pop_size -- @1.2_16
    Given we run the model with pop_size=11593
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_quarantined should increase

  @pop_size__1_2_17
  @pop_size
  Scenario: pop_size -- @1.2_17
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_quarantined should increase

  @pop_size__1_2_18
  @pop_size
  Scenario: pop_size -- @1.2_18
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_size__1_2_19
  @pop_size
  Scenario: pop_size -- @1.2_19
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_size__1_2_20
  @pop_size
  Scenario: pop_size -- @1.2_20
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_size__1_2_21
  @pop_size
  Scenario: pop_size -- @1.2_21
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_size__1_2_22
  @pop_size
  Scenario: pop_size -- @1.2_22
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_size__1_2_23
  @pop_size
  Scenario: pop_size -- @1.2_23
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_quarantined should increase

  @pop_size__1_2_24
  @pop_size
  Scenario: pop_size -- @1.2_24
    Given we run the model with pop_size=11593
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_size__1_2_25
  @pop_size
  Scenario: pop_size -- @1.2_25
    Given we run the model with pop_size=10000
    When we run the model with pop_size=11593
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_quarantined should increase

  @pop_size__1_2_26
  @pop_size
  Scenario: pop_size -- @1.2_26
    Given we run the model with pop_size=10000
    When we run the model with pop_size=11593
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_size__1_2_27
  @pop_size
  Scenario: pop_size -- @1.2_27
    Given we run the model with pop_size=11593
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 13                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_size__1_2_28
  @pop_size
  Scenario: pop_size -- @1.2_28
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_quarantined should increase

  @pop_size__1_2_29
  @pop_size
  Scenario: pop_size -- @1.2_29
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_size__1_2_30
  @pop_size
  Scenario: pop_size -- @1.2_30
    Given we run the model with pop_size=11593
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_quarantined should increase

  @pop_size__1_2_31
  @pop_size
  Scenario: pop_size -- @1.2_31
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_quarantined should increase

  @pop_size__1_2_32
  @pop_size
  Scenario: pop_size -- @1.2_32
    Given we run the model with pop_size=10000
    When we run the model with pop_size=11593
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_quarantined should increase

  @pop_size__1_3_0
  @pop_size
  Scenario: pop_size -- @1.3_0
    Given we run the model with pop_size=10000
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_size__1_3_1
  @pop_size
  Scenario: pop_size -- @1.3_1
    Given we run the model with pop_size=10000
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_size__1_3_2
  @pop_size
  Scenario: pop_size -- @1.3_2
    Given we run the model with pop_size=10000
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_size__1_3_3
  @pop_size
  Scenario: pop_size -- @1.3_3
    Given we run the model with pop_size=10000
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_size__1_3_4
  @pop_size
  Scenario: pop_size -- @1.3_4
    Given we run the model with pop_size=10000
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_size__1_3_5
  @pop_size
  Scenario: pop_size -- @1.3_5
    Given we run the model with pop_size=10000
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_infections should increase

  @pop_size__1_3_6
  @pop_size
  Scenario: pop_size -- @1.3_6
    Given we run the model with pop_size=10000
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should increase

  @pop_size__1_3_7
  @pop_size
  Scenario: pop_size -- @1.3_7
    Given we run the model with pop_size=10000
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_infections should increase

  @pop_size__1_3_8
  @pop_size
  Scenario: pop_size -- @1.3_8
    Given we run the model with pop_size=10000
    When we run the model with pop_size=11593
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_size__1_3_9
  @pop_size
  Scenario: pop_size -- @1.3_9
    Given we run the model with pop_size=10000
    When we run the model with pop_size=11593
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_size__1_3_10
  @pop_size
  Scenario: pop_size -- @1.3_10
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should increase

  @pop_size__1_3_11
  @pop_size
  Scenario: pop_size -- @1.3_11
    Given we run the model with pop_size=10000
    When we run the model with pop_size=11593
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_infections should increase

  @pop_size__1_3_12
  @pop_size
  Scenario: pop_size -- @1.3_12
    Given we run the model with pop_size=11593
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_size__1_3_13
  @pop_size
  Scenario: pop_size -- @1.3_13
    Given we run the model with pop_size=11593
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_size__1_3_14
  @pop_size
  Scenario: pop_size -- @1.3_14
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_size__1_3_15
  @pop_size
  Scenario: pop_size -- @1.3_15
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_size__1_3_16
  @pop_size
  Scenario: pop_size -- @1.3_16
    Given we run the model with pop_size=11593
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should increase

  @pop_size__1_3_17
  @pop_size
  Scenario: pop_size -- @1.3_17
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_infections should increase

  @pop_size__1_3_18
  @pop_size
  Scenario: pop_size -- @1.3_18
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_size__1_3_19
  @pop_size
  Scenario: pop_size -- @1.3_19
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_size__1_3_20
  @pop_size
  Scenario: pop_size -- @1.3_20
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_size__1_3_21
  @pop_size
  Scenario: pop_size -- @1.3_21
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_size__1_3_22
  @pop_size
  Scenario: pop_size -- @1.3_22
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_size__1_3_23
  @pop_size
  Scenario: pop_size -- @1.3_23
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_infections should increase

  @pop_size__1_3_24
  @pop_size
  Scenario: pop_size -- @1.3_24
    Given we run the model with pop_size=11593
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_size__1_3_25
  @pop_size
  Scenario: pop_size -- @1.3_25
    Given we run the model with pop_size=10000
    When we run the model with pop_size=11593
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_size__1_3_26
  @pop_size
  Scenario: pop_size -- @1.3_26
    Given we run the model with pop_size=10000
    When we run the model with pop_size=11593
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_size__1_3_27
  @pop_size
  Scenario: pop_size -- @1.3_27
    Given we run the model with pop_size=11593
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_size__1_3_28
  @pop_size
  Scenario: pop_size -- @1.3_28
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_size__1_3_29
  @pop_size
  Scenario: pop_size -- @1.3_29
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_size__1_3_30
  @pop_size
  Scenario: pop_size -- @1.3_30
    Given we run the model with pop_size=11593
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should increase

  @pop_size__1_3_31
  @pop_size
  Scenario: pop_size -- @1.3_31
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should increase

  @pop_size__1_3_32
  @pop_size
  Scenario: pop_size -- @1.3_32
    Given we run the model with pop_size=10000
    When we run the model with pop_size=11593
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should increase

  @pop_size__1_4_0
  @pop_size
  Scenario: pop_size -- @1.4_0
    Given we run the model with pop_size=10000
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @pop_size__1_4_1
  @pop_size
  Scenario: pop_size -- @1.4_1
    Given we run the model with pop_size=10000
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_deaths should increase

  @pop_size__1_4_2
  @pop_size
  Scenario: pop_size -- @1.4_2
    Given we run the model with pop_size=10000
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_deaths should increase

  @pop_size__1_4_3
  @pop_size
  Scenario: pop_size -- @1.4_3
    Given we run the model with pop_size=10000
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @pop_size__1_4_4
  @pop_size
  Scenario: pop_size -- @1.4_4
    Given we run the model with pop_size=10000
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @pop_size__1_4_5
  @pop_size
  Scenario: pop_size -- @1.4_5
    Given we run the model with pop_size=10000
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_deaths should increase

  @pop_size__1_4_6
  @pop_size
  Scenario: pop_size -- @1.4_6
    Given we run the model with pop_size=10000
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_deaths should increase

  @pop_size__1_4_7
  @pop_size
  Scenario: pop_size -- @1.4_7
    Given we run the model with pop_size=10000
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_deaths should increase

  @pop_size__1_4_8
  @pop_size
  Scenario: pop_size -- @1.4_8
    Given we run the model with pop_size=10000
    When we run the model with pop_size=11593
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_deaths should increase

  @pop_size__1_4_9
  @pop_size
  Scenario: pop_size -- @1.4_9
    Given we run the model with pop_size=10000
    When we run the model with pop_size=11593
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_deaths should increase

  @pop_size__1_4_10
  @pop_size
  Scenario: pop_size -- @1.4_10
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @pop_size__1_4_11
  @pop_size
  Scenario: pop_size -- @1.4_11
    Given we run the model with pop_size=10000
    When we run the model with pop_size=11593
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_deaths should increase

  @pop_size__1_4_12
  @pop_size
  Scenario: pop_size -- @1.4_12
    Given we run the model with pop_size=11593
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @pop_size__1_4_13
  @pop_size
  Scenario: pop_size -- @1.4_13
    Given we run the model with pop_size=11593
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @pop_size__1_4_14
  @pop_size
  Scenario: pop_size -- @1.4_14
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @pop_size__1_4_15
  @pop_size
  Scenario: pop_size -- @1.4_15
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @pop_size__1_4_16
  @pop_size
  Scenario: pop_size -- @1.4_16
    Given we run the model with pop_size=11593
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @pop_size__1_4_17
  @pop_size
  Scenario: pop_size -- @1.4_17
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_deaths should increase

  @pop_size__1_4_18
  @pop_size
  Scenario: pop_size -- @1.4_18
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @pop_size__1_4_19
  @pop_size
  Scenario: pop_size -- @1.4_19
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @pop_size__1_4_20
  @pop_size
  Scenario: pop_size -- @1.4_20
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @pop_size__1_4_21
  @pop_size
  Scenario: pop_size -- @1.4_21
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_deaths should increase

  @pop_size__1_4_22
  @pop_size
  Scenario: pop_size -- @1.4_22
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @pop_size__1_4_23
  @pop_size
  Scenario: pop_size -- @1.4_23
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_deaths should increase

  @pop_size__1_4_24
  @pop_size
  Scenario: pop_size -- @1.4_24
    Given we run the model with pop_size=11593
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @pop_size__1_4_25
  @pop_size
  Scenario: pop_size -- @1.4_25
    Given we run the model with pop_size=10000
    When we run the model with pop_size=11593
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_deaths should increase

  @pop_size__1_4_26
  @pop_size
  Scenario: pop_size -- @1.4_26
    Given we run the model with pop_size=10000
    When we run the model with pop_size=11593
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @pop_size__1_4_27
  @pop_size
  Scenario: pop_size -- @1.4_27
    Given we run the model with pop_size=11593
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @pop_size__1_4_28
  @pop_size
  Scenario: pop_size -- @1.4_28
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_deaths should increase

  @pop_size__1_4_29
  @pop_size
  Scenario: pop_size -- @1.4_29
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should increase

  @pop_size__1_4_30
  @pop_size
  Scenario: pop_size -- @1.4_30
    Given we run the model with pop_size=11593
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_deaths should increase

  @pop_size__1_4_31
  @pop_size
  Scenario: pop_size -- @1.4_31
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_deaths should increase

  @pop_size__1_4_32
  @pop_size
  Scenario: pop_size -- @1.4_32
    Given we run the model with pop_size=10000
    When we run the model with pop_size=11593
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_deaths should increase

  @pop_infected__1_1_0
  @pop_infected
  Scenario: pop_infected -- @1.1_0
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @pop_infected__1_1_1
  @pop_infected
  Scenario: pop_infected -- @1.1_1
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_tests should increase

  @pop_infected__1_1_2
  @pop_infected
  Scenario: pop_infected -- @1.1_2
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_tests should increase

  @pop_infected__1_1_3
  @pop_infected
  Scenario: pop_infected -- @1.1_3
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_tests should increase

  @pop_infected__1_1_4
  @pop_infected
  Scenario: pop_infected -- @1.1_4
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @pop_infected__1_1_5
  @pop_infected
  Scenario: pop_infected -- @1.1_5
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @pop_infected__1_1_6
  @pop_infected
  Scenario: pop_infected -- @1.1_6
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_tests should increase

  @pop_infected__1_1_7
  @pop_infected
  Scenario: pop_infected -- @1.1_7
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @pop_infected__1_1_8
  @pop_infected
  Scenario: pop_infected -- @1.1_8
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=217
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @pop_infected__1_1_9
  @pop_infected
  Scenario: pop_infected -- @1.1_9
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=217
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_tests should increase

  @pop_infected__1_1_10
  @pop_infected
  Scenario: pop_infected -- @1.1_10
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @pop_infected__1_1_11
  @pop_infected
  Scenario: pop_infected -- @1.1_11
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=217
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 13                  |
    | pop_size        | 13013               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @pop_infected__1_1_12
  @pop_infected
  Scenario: pop_infected -- @1.1_12
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @pop_infected__1_1_13
  @pop_infected
  Scenario: pop_infected -- @1.1_13
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @pop_infected__1_1_14
  @pop_infected
  Scenario: pop_infected -- @1.1_14
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @pop_infected__1_1_15
  @pop_infected
  Scenario: pop_infected -- @1.1_15
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_tests should increase

  @pop_infected__1_1_16
  @pop_infected
  Scenario: pop_infected -- @1.1_16
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @pop_infected__1_1_17
  @pop_infected
  Scenario: pop_infected -- @1.1_17
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_tests should increase

  @pop_infected__1_1_18
  @pop_infected
  Scenario: pop_infected -- @1.1_18
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_tests should increase

  @pop_infected__1_1_19
  @pop_infected
  Scenario: pop_infected -- @1.1_19
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @pop_infected__1_1_20
  @pop_infected
  Scenario: pop_infected -- @1.1_20
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @pop_infected__1_1_21
  @pop_infected
  Scenario: pop_infected -- @1.1_21
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_tests should increase

  @pop_infected__1_1_22
  @pop_infected
  Scenario: pop_infected -- @1.1_22
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @pop_infected__1_1_23
  @pop_infected
  Scenario: pop_infected -- @1.1_23
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @pop_infected__1_1_24
  @pop_infected
  Scenario: pop_infected -- @1.1_24
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @pop_infected__1_1_25
  @pop_infected
  Scenario: pop_infected -- @1.1_25
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=217
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_tests should increase

  @pop_infected__1_1_26
  @pop_infected
  Scenario: pop_infected -- @1.1_26
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=217
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @pop_infected__1_1_27
  @pop_infected
  Scenario: pop_infected -- @1.1_27
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @pop_infected__1_1_28
  @pop_infected
  Scenario: pop_infected -- @1.1_28
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_tests should increase

  @pop_infected__1_1_29
  @pop_infected
  Scenario: pop_infected -- @1.1_29
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @pop_infected__1_1_30
  @pop_infected
  Scenario: pop_infected -- @1.1_30
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_tests should increase

  @pop_infected__1_1_31
  @pop_infected
  Scenario: pop_infected -- @1.1_31
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_tests should increase

  @pop_infected__1_1_32
  @pop_infected
  Scenario: pop_infected -- @1.1_32
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=217
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_tests should increase

  @pop_infected__1_2_0
  @pop_infected
  Scenario: pop_infected -- @1.2_0
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_infected__1_2_1
  @pop_infected
  Scenario: pop_infected -- @1.2_1
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_quarantined should increase

  @pop_infected__1_2_2
  @pop_infected
  Scenario: pop_infected -- @1.2_2
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_quarantined should increase

  @pop_infected__1_2_3
  @pop_infected
  Scenario: pop_infected -- @1.2_3
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_infected__1_2_4
  @pop_infected
  Scenario: pop_infected -- @1.2_4
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_infected__1_2_5
  @pop_infected
  Scenario: pop_infected -- @1.2_5
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_infected__1_2_6
  @pop_infected
  Scenario: pop_infected -- @1.2_6
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_quarantined should increase

  @pop_infected__1_2_7
  @pop_infected
  Scenario: pop_infected -- @1.2_7
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_infected__1_2_8
  @pop_infected
  Scenario: pop_infected -- @1.2_8
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=217
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_quarantined should increase

  @pop_infected__1_2_9
  @pop_infected
  Scenario: pop_infected -- @1.2_9
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=217
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_quarantined should increase

  @pop_infected__1_2_10
  @pop_infected
  Scenario: pop_infected -- @1.2_10
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_quarantined should increase

  @pop_infected__1_2_11
  @pop_infected
  Scenario: pop_infected -- @1.2_11
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=217
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 13                  |
    | pop_size        | 13013               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_infected__1_2_12
  @pop_infected
  Scenario: pop_infected -- @1.2_12
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_infected__1_2_13
  @pop_infected
  Scenario: pop_infected -- @1.2_13
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_infected__1_2_14
  @pop_infected
  Scenario: pop_infected -- @1.2_14
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_infected__1_2_15
  @pop_infected
  Scenario: pop_infected -- @1.2_15
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_infected__1_2_16
  @pop_infected
  Scenario: pop_infected -- @1.2_16
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_infected__1_2_17
  @pop_infected
  Scenario: pop_infected -- @1.2_17
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_quarantined should increase

  @pop_infected__1_2_18
  @pop_infected
  Scenario: pop_infected -- @1.2_18
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_infected__1_2_19
  @pop_infected
  Scenario: pop_infected -- @1.2_19
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_infected__1_2_20
  @pop_infected
  Scenario: pop_infected -- @1.2_20
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_infected__1_2_21
  @pop_infected
  Scenario: pop_infected -- @1.2_21
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_quarantined should increase

  @pop_infected__1_2_22
  @pop_infected
  Scenario: pop_infected -- @1.2_22
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_infected__1_2_23
  @pop_infected
  Scenario: pop_infected -- @1.2_23
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_infected__1_2_24
  @pop_infected
  Scenario: pop_infected -- @1.2_24
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_infected__1_2_25
  @pop_infected
  Scenario: pop_infected -- @1.2_25
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=217
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_infected__1_2_26
  @pop_infected
  Scenario: pop_infected -- @1.2_26
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=217
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_infected__1_2_27
  @pop_infected
  Scenario: pop_infected -- @1.2_27
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_quarantined should increase

  @pop_infected__1_2_28
  @pop_infected
  Scenario: pop_infected -- @1.2_28
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_quarantined should increase

  @pop_infected__1_2_29
  @pop_infected
  Scenario: pop_infected -- @1.2_29
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_infected__1_2_30
  @pop_infected
  Scenario: pop_infected -- @1.2_30
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_infected__1_2_31
  @pop_infected
  Scenario: pop_infected -- @1.2_31
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_infected__1_2_32
  @pop_infected
  Scenario: pop_infected -- @1.2_32
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=217
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_quarantined should increase

  @pop_infected__1_3_0
  @pop_infected
  Scenario: pop_infected -- @1.3_0
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_infected__1_3_1
  @pop_infected
  Scenario: pop_infected -- @1.3_1
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_infections should increase

  @pop_infected__1_3_2
  @pop_infected
  Scenario: pop_infected -- @1.3_2
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should increase

  @pop_infected__1_3_3
  @pop_infected
  Scenario: pop_infected -- @1.3_3
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_infections should increase

  @pop_infected__1_3_4
  @pop_infected
  Scenario: pop_infected -- @1.3_4
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_infected__1_3_5
  @pop_infected
  Scenario: pop_infected -- @1.3_5
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_infected__1_3_6
  @pop_infected
  Scenario: pop_infected -- @1.3_6
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should increase

  @pop_infected__1_3_7
  @pop_infected
  Scenario: pop_infected -- @1.3_7
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_infected__1_3_8
  @pop_infected
  Scenario: pop_infected -- @1.3_8
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=217
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_infected__1_3_9
  @pop_infected
  Scenario: pop_infected -- @1.3_9
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=217
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should increase

  @pop_infected__1_3_10
  @pop_infected
  Scenario: pop_infected -- @1.3_10
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_infected__1_3_11
  @pop_infected
  Scenario: pop_infected -- @1.3_11
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=217
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_infected__1_3_12
  @pop_infected
  Scenario: pop_infected -- @1.3_12
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_infected__1_3_13
  @pop_infected
  Scenario: pop_infected -- @1.3_13
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_infected__1_3_14
  @pop_infected
  Scenario: pop_infected -- @1.3_14
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_infected__1_3_15
  @pop_infected
  Scenario: pop_infected -- @1.3_15
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_infected__1_3_16
  @pop_infected
  Scenario: pop_infected -- @1.3_16
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should increase

  @pop_infected__1_3_17
  @pop_infected
  Scenario: pop_infected -- @1.3_17
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_infected__1_3_18
  @pop_infected
  Scenario: pop_infected -- @1.3_18
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_infections should increase

  @pop_infected__1_3_19
  @pop_infected
  Scenario: pop_infected -- @1.3_19
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_infected__1_3_20
  @pop_infected
  Scenario: pop_infected -- @1.3_20
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_infected__1_3_21
  @pop_infected
  Scenario: pop_infected -- @1.3_21
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_infections should increase

  @pop_infected__1_3_22
  @pop_infected
  Scenario: pop_infected -- @1.3_22
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_infected__1_3_23
  @pop_infected
  Scenario: pop_infected -- @1.3_23
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_infected__1_3_24
  @pop_infected
  Scenario: pop_infected -- @1.3_24
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    Then the cum_infections should increase

  @pop_infected__1_3_25
  @pop_infected
  Scenario: pop_infected -- @1.3_25
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=217
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_infections should increase

  @pop_infected__1_3_26
  @pop_infected
  Scenario: pop_infected -- @1.3_26
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=217
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_infected__1_3_27
  @pop_infected
  Scenario: pop_infected -- @1.3_27
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should increase

  @pop_infected__1_3_28
  @pop_infected
  Scenario: pop_infected -- @1.3_28
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should increase

  @pop_infected__1_3_29
  @pop_infected
  Scenario: pop_infected -- @1.3_29
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_infected__1_3_30
  @pop_infected
  Scenario: pop_infected -- @1.3_30
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_infections should increase

  @pop_infected__1_3_31
  @pop_infected
  Scenario: pop_infected -- @1.3_31
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should increase

  @pop_infected__1_3_32
  @pop_infected
  Scenario: pop_infected -- @1.3_32
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=217
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_infections should increase

  @pop_infected__1_4_0
  @pop_infected
  Scenario: pop_infected -- @1.4_0
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_1
  @pop_infected
  Scenario: pop_infected -- @1.4_1
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_2
  @pop_infected
  Scenario: pop_infected -- @1.4_2
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_3
  @pop_infected
  Scenario: pop_infected -- @1.4_3
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_4
  @pop_infected
  Scenario: pop_infected -- @1.4_4
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_5
  @pop_infected
  Scenario: pop_infected -- @1.4_5
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_6
  @pop_infected
  Scenario: pop_infected -- @1.4_6
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_7
  @pop_infected
  Scenario: pop_infected -- @1.4_7
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_8
  @pop_infected
  Scenario: pop_infected -- @1.4_8
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=217
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_9
  @pop_infected
  Scenario: pop_infected -- @1.4_9
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=217
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_10
  @pop_infected
  Scenario: pop_infected -- @1.4_10
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_11
  @pop_infected
  Scenario: pop_infected -- @1.4_11
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=217
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 13                  |
    | pop_size        | 13013               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_12
  @pop_infected
  Scenario: pop_infected -- @1.4_12
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_13
  @pop_infected
  Scenario: pop_infected -- @1.4_13
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_14
  @pop_infected
  Scenario: pop_infected -- @1.4_14
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_15
  @pop_infected
  Scenario: pop_infected -- @1.4_15
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_16
  @pop_infected
  Scenario: pop_infected -- @1.4_16
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_17
  @pop_infected
  Scenario: pop_infected -- @1.4_17
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_18
  @pop_infected
  Scenario: pop_infected -- @1.4_18
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value              |
    | n_days          | 80                 |
    | quar_period     | 11                 |
    | pop_size        | 10000              |
    | symp_prob       | 0.3946267859089032 |
    | asymp_prob      | 0.5320606162934023 |
    | symp_quar_prob  | 0.0456075960115124 |
    | asymp_quar_prob | 0.5362647235083882 |
    | trace_probs     | 0.4179307148516287 |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_19
  @pop_infected
  Scenario: pop_infected -- @1.4_19
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_20
  @pop_infected
  Scenario: pop_infected -- @1.4_20
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_21
  @pop_infected
  Scenario: pop_infected -- @1.4_21
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_22
  @pop_infected
  Scenario: pop_infected -- @1.4_22
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_23
  @pop_infected
  Scenario: pop_infected -- @1.4_23
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_24
  @pop_infected
  Scenario: pop_infected -- @1.4_24
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_25
  @pop_infected
  Scenario: pop_infected -- @1.4_25
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=217
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_26
  @pop_infected
  Scenario: pop_infected -- @1.4_26
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=217
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_27
  @pop_infected
  Scenario: pop_infected -- @1.4_27
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_28
  @pop_infected
  Scenario: pop_infected -- @1.4_28
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_29
  @pop_infected
  Scenario: pop_infected -- @1.4_29
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_30
  @pop_infected
  Scenario: pop_infected -- @1.4_30
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.7734426077281416  |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_31
  @pop_infected
  Scenario: pop_infected -- @1.4_31
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same

  @pop_infected__1_4_32
  @pop_infected
  Scenario: pop_infected -- @1.4_32
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=217
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    Then the cum_deaths should remain the same
