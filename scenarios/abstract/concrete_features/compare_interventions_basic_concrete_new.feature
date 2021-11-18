Feature: Compare interventions basic concrete
  Background:
    Given a simulation with parameters
    | parameter       | type  | value               |
    | asymp_prob      | float | 0.5320606162934023  |
    | asymp_quar_prob | float | 0.16550077992524106 |
    | average_age     | int   | 20                  |
    | household_size  | float | 5.916               |
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

  @average_age_cum_quarantined_0
  @average_age
  Scenario: average_age_cum_quarantined_0
    Given we run the model with average_age=20
    When we run the model with average_age=30
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
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @average_age_cum_quarantined_1
  @average_age
  Scenario: average_age_cum_quarantined_1
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 13                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @average_age_cum_quarantined_2
  @average_age
  Scenario: average_age_cum_quarantined_2
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @average_age_cum_quarantined_3
  @average_age
  Scenario: average_age_cum_quarantined_3
    Given we run the model with average_age=20
    When we run the model with average_age=41
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
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @average_age_cum_quarantined_4
  @average_age
  Scenario: average_age_cum_quarantined_4
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 15                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @average_age_cum_quarantined_5
  @average_age
  Scenario: average_age_cum_quarantined_5
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @average_age_cum_quarantined_6
  @average_age
  Scenario: average_age_cum_quarantined_6
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @average_age_cum_quarantined_7
  @average_age
  Scenario: average_age_cum_quarantined_7
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @average_age_cum_quarantined_8
  @average_age
  Scenario: average_age_cum_quarantined_8
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @average_age_cum_quarantined_9
  @average_age
  Scenario: average_age_cum_quarantined_9
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @average_age_cum_quarantined_10
  @average_age
  Scenario: average_age_cum_quarantined_10
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @average_age_cum_quarantined_11
  @average_age
  Scenario: average_age_cum_quarantined_11
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @average_age_cum_quarantined_12
  @average_age
  Scenario: average_age_cum_quarantined_12
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 13                  |
    | pop_size        | 13013               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @average_age_cum_quarantined_13
  @average_age
  Scenario: average_age_cum_quarantined_13
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @average_age_cum_quarantined_14
  @average_age
  Scenario: average_age_cum_quarantined_14
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @average_age_cum_quarantined_15
  @average_age
  Scenario: average_age_cum_quarantined_15
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @average_age_cum_quarantined_16
  @average_age
  Scenario: average_age_cum_quarantined_16
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @average_age_cum_quarantined_17
  @average_age
  Scenario: average_age_cum_quarantined_17
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @average_age_cum_quarantined_18
  @average_age
  Scenario: average_age_cum_quarantined_18
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @average_age_cum_quarantined_19
  @average_age
  Scenario: average_age_cum_quarantined_19
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @average_age_cum_quarantined_20
  @average_age
  Scenario: average_age_cum_quarantined_20
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 13                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @average_age_cum_quarantined_21
  @average_age
  Scenario: average_age_cum_quarantined_21
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @average_age_cum_quarantined_22
  @average_age
  Scenario: average_age_cum_quarantined_22
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @average_age_cum_quarantined_23
  @average_age
  Scenario: average_age_cum_quarantined_23
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @average_age_cum_quarantined_24
  @average_age
  Scenario: average_age_cum_quarantined_24
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @average_age_cum_quarantined_25
  @average_age
  Scenario: average_age_cum_quarantined_25
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value              |
    | n_days          | 90                 |
    | quar_period     | 15                 |
    | pop_size        | 13013              |
    | pop_infected    | 217                |
    | symp_prob       | 0.3946267859089032 |
    | asymp_prob      | 0.5320606162934023 |
    | symp_quar_prob  | 0.0456075960115124 |
    | asymp_quar_prob | 0.5362647235083882 |
    | trace_probs     | 0.4179307148516287 |
    | household_size  | 5.916              |
    Then the cum_quarantined should increase

  @average_age_cum_quarantined_26
  @average_age
  Scenario: average_age_cum_quarantined_26
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @average_age_cum_quarantined_27
  @average_age
  Scenario: average_age_cum_quarantined_27
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @average_age_cum_quarantined_28
  @average_age
  Scenario: average_age_cum_quarantined_28
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @average_age_cum_quarantined_29
  @average_age
  Scenario: average_age_cum_quarantined_29
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @average_age_cum_quarantined_30
  @average_age
  Scenario: average_age_cum_quarantined_30
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @average_age_cum_infections_0
  @average_age
  Scenario: average_age_cum_infections_0
    Given we run the model with average_age=20
    When we run the model with average_age=41
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
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @average_age_cum_infections_1
  @average_age
  Scenario: average_age_cum_infections_1
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 13                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @average_age_cum_infections_2
  @average_age
  Scenario: average_age_cum_infections_2
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @average_age_cum_infections_3
  @average_age
  Scenario: average_age_cum_infections_3
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @average_age_cum_infections_4
  @average_age
  Scenario: average_age_cum_infections_4
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @average_age_cum_infections_5
  @average_age
  Scenario: average_age_cum_infections_5
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @average_age_cum_infections_6
  @average_age
  Scenario: average_age_cum_infections_6
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @average_age_cum_infections_7
  @average_age
  Scenario: average_age_cum_infections_7
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @average_age_cum_infections_8
  @average_age
  Scenario: average_age_cum_infections_8
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @average_age_cum_infections_9
  @average_age
  Scenario: average_age_cum_infections_9
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @average_age_cum_infections_10
  @average_age
  Scenario: average_age_cum_infections_10
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @average_age_cum_infections_11
  @average_age
  Scenario: average_age_cum_infections_11
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @average_age_cum_infections_12
  @average_age
  Scenario: average_age_cum_infections_12
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 13                  |
    | pop_size        | 13013               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @average_age_cum_infections_13
  @average_age
  Scenario: average_age_cum_infections_13
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @average_age_cum_infections_14
  @average_age
  Scenario: average_age_cum_infections_14
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @average_age_cum_infections_15
  @average_age
  Scenario: average_age_cum_infections_15
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @average_age_cum_infections_16
  @average_age
  Scenario: average_age_cum_infections_16
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @average_age_cum_infections_17
  @average_age
  Scenario: average_age_cum_infections_17
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @average_age_cum_infections_18
  @average_age
  Scenario: average_age_cum_infections_18
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @average_age_cum_infections_19
  @average_age
  Scenario: average_age_cum_infections_19
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @average_age_cum_infections_20
  @average_age
  Scenario: average_age_cum_infections_20
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @average_age_cum_infections_21
  @average_age
  Scenario: average_age_cum_infections_21
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @average_age_cum_infections_22
  @average_age
  Scenario: average_age_cum_infections_22
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @average_age_cum_infections_23
  @average_age
  Scenario: average_age_cum_infections_23
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @average_age_cum_infections_24
  @average_age
  Scenario: average_age_cum_infections_24
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @average_age_cum_infections_25
  @average_age
  Scenario: average_age_cum_infections_25
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 15                  |
    | pop_size        | 13013               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @average_age_cum_infections_26
  @average_age
  Scenario: average_age_cum_infections_26
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @average_age_cum_infections_27
  @average_age
  Scenario: average_age_cum_infections_27
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @average_age_cum_infections_28
  @average_age
  Scenario: average_age_cum_infections_28
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @average_age_cum_infections_29
  @average_age
  Scenario: average_age_cum_infections_29
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @average_age_cum_infections_30
  @average_age
  Scenario: average_age_cum_infections_30
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @average_age_cum_deaths_0
  @average_age
  Scenario: average_age_cum_deaths_0
    Given we run the model with average_age=20
    When we run the model with average_age=41
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
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @average_age_cum_deaths_1
  @average_age
  Scenario: average_age_cum_deaths_1
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 13                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @average_age_cum_deaths_2
  @average_age
  Scenario: average_age_cum_deaths_2
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @average_age_cum_deaths_3
  @average_age
  Scenario: average_age_cum_deaths_3
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @average_age_cum_deaths_4
  @average_age
  Scenario: average_age_cum_deaths_4
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 15                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @average_age_cum_deaths_5
  @average_age
  Scenario: average_age_cum_deaths_5
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @average_age_cum_deaths_6
  @average_age
  Scenario: average_age_cum_deaths_6
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @average_age_cum_deaths_7
  @average_age
  Scenario: average_age_cum_deaths_7
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @average_age_cum_deaths_8
  @average_age
  Scenario: average_age_cum_deaths_8
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @average_age_cum_deaths_9
  @average_age
  Scenario: average_age_cum_deaths_9
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @average_age_cum_deaths_10
  @average_age
  Scenario: average_age_cum_deaths_10
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @average_age_cum_deaths_11
  @average_age
  Scenario: average_age_cum_deaths_11
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @average_age_cum_deaths_12
  @average_age
  Scenario: average_age_cum_deaths_12
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value              |
    | n_days          | 66                 |
    | quar_period     | 13                 |
    | pop_size        | 13013              |
    | pop_infected    | 217                |
    | symp_prob       | 0.3946267859089032 |
    | asymp_prob      | 0.5320606162934023 |
    | symp_quar_prob  | 0.0456075960115124 |
    | asymp_quar_prob | 0.2404924383007006 |
    | trace_probs     | 0.7734426077281416 |
    | household_size  | 5.916              |
    Then the cum_deaths should increase

  @average_age_cum_deaths_13
  @average_age
  Scenario: average_age_cum_deaths_13
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @average_age_cum_deaths_14
  @average_age
  Scenario: average_age_cum_deaths_14
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @average_age_cum_deaths_15
  @average_age
  Scenario: average_age_cum_deaths_15
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @average_age_cum_deaths_16
  @average_age
  Scenario: average_age_cum_deaths_16
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @average_age_cum_deaths_17
  @average_age
  Scenario: average_age_cum_deaths_17
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @average_age_cum_deaths_18
  @average_age
  Scenario: average_age_cum_deaths_18
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @average_age_cum_deaths_19
  @average_age
  Scenario: average_age_cum_deaths_19
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @average_age_cum_deaths_20
  @average_age
  Scenario: average_age_cum_deaths_20
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @average_age_cum_deaths_21
  @average_age
  Scenario: average_age_cum_deaths_21
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @average_age_cum_deaths_22
  @average_age
  Scenario: average_age_cum_deaths_22
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @average_age_cum_deaths_23
  @average_age
  Scenario: average_age_cum_deaths_23
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @average_age_cum_deaths_24
  @average_age
  Scenario: average_age_cum_deaths_24
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @average_age_cum_deaths_25
  @average_age
  Scenario: average_age_cum_deaths_25
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 15                  |
    | pop_size        | 13013               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @average_age_cum_deaths_26
  @average_age
  Scenario: average_age_cum_deaths_26
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @average_age_cum_deaths_27
  @average_age
  Scenario: average_age_cum_deaths_27
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @average_age_cum_deaths_28
  @average_age
  Scenario: average_age_cum_deaths_28
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @average_age_cum_deaths_29
  @average_age
  Scenario: average_age_cum_deaths_29
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @average_age_cum_deaths_30
  @average_age
  Scenario: average_age_cum_deaths_30
    Given we run the model with average_age=20
    When we run the model with average_age=41
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @quar_period_cum_quarantined_0
  @quar_period_short
  Scenario: quar_period_cum_quarantined_0
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
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @quar_period_cum_quarantined_1
  @quar_period_short
  Scenario: quar_period_cum_quarantined_1
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @quar_period_cum_quarantined_2
  @quar_period_short
  Scenario: quar_period_cum_quarantined_2
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @quar_period_cum_quarantined_3
  @quar_period_short
  Scenario: quar_period_cum_quarantined_3
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @quar_period_cum_quarantined_4
  @quar_period_short
  Scenario: quar_period_cum_quarantined_4
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @quar_period_cum_quarantined_5
  @quar_period_short
  Scenario: quar_period_cum_quarantined_5
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @quar_period_cum_quarantined_6
  @quar_period_short
  Scenario: quar_period_cum_quarantined_6
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @quar_period_cum_quarantined_7
  @quar_period_short
  Scenario: quar_period_cum_quarantined_7
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @quar_period_cum_quarantined_8
  @quar_period_short
  Scenario: quar_period_cum_quarantined_8
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
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @quar_period_cum_quarantined_9
  @quar_period_short
  Scenario: quar_period_cum_quarantined_9
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @quar_period_cum_quarantined_10
  @quar_period_short
  Scenario: quar_period_cum_quarantined_10
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @quar_period_cum_quarantined_11
  @quar_period_short
  Scenario: quar_period_cum_quarantined_11
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @quar_period_cum_quarantined_12
  @quar_period_short
  Scenario: quar_period_cum_quarantined_12
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @quar_period_cum_quarantined_13
  @quar_period_short
  Scenario: quar_period_cum_quarantined_13
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 13013               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @quar_period_cum_quarantined_14
  @quar_period_short
  Scenario: quar_period_cum_quarantined_14
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @quar_period_cum_quarantined_15
  @quar_period_short
  Scenario: quar_period_cum_quarantined_15
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @quar_period_cum_quarantined_16
  @quar_period_short
  Scenario: quar_period_cum_quarantined_16
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @quar_period_cum_quarantined_17
  @quar_period_short
  Scenario: quar_period_cum_quarantined_17
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @quar_period_cum_quarantined_18
  @quar_period_short
  Scenario: quar_period_cum_quarantined_18
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @quar_period_cum_quarantined_19
  @quar_period_short
  Scenario: quar_period_cum_quarantined_19
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @quar_period_cum_quarantined_20
  @quar_period_short
  Scenario: quar_period_cum_quarantined_20
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @quar_period_cum_quarantined_21
  @quar_period_short
  Scenario: quar_period_cum_quarantined_21
    Given we run the model with quar_period=13
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
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @quar_period_cum_quarantined_22
  @quar_period_short
  Scenario: quar_period_cum_quarantined_22
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @quar_period_cum_quarantined_23
  @quar_period_short
  Scenario: quar_period_cum_quarantined_23
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @quar_period_cum_quarantined_24
  @quar_period_short
  Scenario: quar_period_cum_quarantined_24
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @quar_period_cum_quarantined_25
  @quar_period_short
  Scenario: quar_period_cum_quarantined_25
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @quar_period_cum_quarantined_26
  @quar_period_short
  Scenario: quar_period_cum_quarantined_26
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @quar_period_cum_quarantined_27
  @quar_period_short
  Scenario: quar_period_cum_quarantined_27
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @quar_period_cum_quarantined_28
  @quar_period_short
  Scenario: quar_period_cum_quarantined_28
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @quar_period_cum_quarantined_29
  @quar_period_short
  Scenario: quar_period_cum_quarantined_29
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @quar_period_cum_infections_0
  @quar_period_short
  Scenario: quar_period_cum_infections_0
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
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @quar_period_cum_infections_1
  @quar_period_short
  Scenario: quar_period_cum_infections_1
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @quar_period_cum_infections_2
  @quar_period_short
  Scenario: quar_period_cum_infections_2
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @quar_period_cum_infections_3
  @quar_period_short
  Scenario: quar_period_cum_infections_3
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @quar_period_cum_infections_4
  @quar_period_short
  Scenario: quar_period_cum_infections_4
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @quar_period_cum_infections_5
  @quar_period_short
  Scenario: quar_period_cum_infections_5
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @quar_period_cum_infections_6
  @quar_period_short
  Scenario: quar_period_cum_infections_6
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @quar_period_cum_infections_7
  @quar_period_short
  Scenario: quar_period_cum_infections_7
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @quar_period_cum_infections_8
  @quar_period_short
  Scenario: quar_period_cum_infections_8
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @quar_period_cum_infections_9
  @quar_period_short
  Scenario: quar_period_cum_infections_9
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @quar_period_cum_infections_10
  @quar_period_short
  Scenario: quar_period_cum_infections_10
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @quar_period_cum_infections_11
  @quar_period_short
  Scenario: quar_period_cum_infections_11
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @quar_period_cum_infections_12
  @quar_period_short
  Scenario: quar_period_cum_infections_12
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @quar_period_cum_infections_13
  @quar_period_short
  Scenario: quar_period_cum_infections_13
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 13013               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @quar_period_cum_infections_14
  @quar_period_short
  Scenario: quar_period_cum_infections_14
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @quar_period_cum_infections_15
  @quar_period_short
  Scenario: quar_period_cum_infections_15
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @quar_period_cum_infections_16
  @quar_period_short
  Scenario: quar_period_cum_infections_16
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @quar_period_cum_infections_17
  @quar_period_short
  Scenario: quar_period_cum_infections_17
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @quar_period_cum_infections_18
  @quar_period_short
  Scenario: quar_period_cum_infections_18
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @quar_period_cum_infections_19
  @quar_period_short
  Scenario: quar_period_cum_infections_19
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @quar_period_cum_infections_20
  @quar_period_short
  Scenario: quar_period_cum_infections_20
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @quar_period_cum_infections_21
  @quar_period_short
  Scenario: quar_period_cum_infections_21
    Given we run the model with quar_period=13
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
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @quar_period_cum_infections_22
  @quar_period_short
  Scenario: quar_period_cum_infections_22
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @quar_period_cum_infections_23
  @quar_period_short
  Scenario: quar_period_cum_infections_23
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @quar_period_cum_infections_24
  @quar_period_short
  Scenario: quar_period_cum_infections_24
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @quar_period_cum_infections_25
  @quar_period_short
  Scenario: quar_period_cum_infections_25
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @quar_period_cum_infections_26
  @quar_period_short
  Scenario: quar_period_cum_infections_26
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @quar_period_cum_infections_27
  @quar_period_short
  Scenario: quar_period_cum_infections_27
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @quar_period_cum_infections_28
  @quar_period_short
  Scenario: quar_period_cum_infections_28
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @quar_period_cum_infections_29
  @quar_period_short
  Scenario: quar_period_cum_infections_29
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @quar_period_cum_deaths_0
  @quar_period_short
  Scenario: quar_period_cum_deaths_0
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
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @quar_period_cum_deaths_1
  @quar_period_short
  Scenario: quar_period_cum_deaths_1
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @quar_period_cum_deaths_2
  @quar_period_short
  Scenario: quar_period_cum_deaths_2
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @quar_period_cum_deaths_3
  @quar_period_short
  Scenario: quar_period_cum_deaths_3
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @quar_period_cum_deaths_4
  @quar_period_short
  Scenario: quar_period_cum_deaths_4
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @quar_period_cum_deaths_5
  @quar_period_short
  Scenario: quar_period_cum_deaths_5
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @quar_period_cum_deaths_6
  @quar_period_short
  Scenario: quar_period_cum_deaths_6
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @quar_period_cum_deaths_7
  @quar_period_short
  Scenario: quar_period_cum_deaths_7
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @quar_period_cum_deaths_8
  @quar_period_short
  Scenario: quar_period_cum_deaths_8
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @quar_period_cum_deaths_9
  @quar_period_short
  Scenario: quar_period_cum_deaths_9
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @quar_period_cum_deaths_10
  @quar_period_short
  Scenario: quar_period_cum_deaths_10
    Given we run the model with quar_period=11
    When we run the model with quar_period=13
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @quar_period_cum_deaths_11
  @quar_period_short
  Scenario: quar_period_cum_deaths_11
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @quar_period_cum_deaths_12
  @quar_period_short
  Scenario: quar_period_cum_deaths_12
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @quar_period_cum_deaths_13
  @quar_period_short
  Scenario: quar_period_cum_deaths_13
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 13013               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @quar_period_cum_deaths_14
  @quar_period_short
  Scenario: quar_period_cum_deaths_14
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @quar_period_cum_deaths_15
  @quar_period_short
  Scenario: quar_period_cum_deaths_15
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @quar_period_cum_deaths_16
  @quar_period_short
  Scenario: quar_period_cum_deaths_16
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @quar_period_cum_deaths_17
  @quar_period_short
  Scenario: quar_period_cum_deaths_17
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @quar_period_cum_deaths_18
  @quar_period_short
  Scenario: quar_period_cum_deaths_18
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @quar_period_cum_deaths_19
  @quar_period_short
  Scenario: quar_period_cum_deaths_19
    Given we run the model with quar_period=11
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @quar_period_cum_deaths_20
  @quar_period_short
  Scenario: quar_period_cum_deaths_20
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @quar_period_cum_deaths_21
  @quar_period_short
  Scenario: quar_period_cum_deaths_21
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @quar_period_cum_deaths_22
  @quar_period_short
  Scenario: quar_period_cum_deaths_22
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @quar_period_cum_deaths_23
  @quar_period_short
  Scenario: quar_period_cum_deaths_23
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @quar_period_cum_deaths_24
  @quar_period_short
  Scenario: quar_period_cum_deaths_24
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @quar_period_cum_deaths_25
  @quar_period_short
  Scenario: quar_period_cum_deaths_25
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @quar_period_cum_deaths_26
  @quar_period_short
  Scenario: quar_period_cum_deaths_26
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @quar_period_cum_deaths_27
  @quar_period_short
  Scenario: quar_period_cum_deaths_27
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @quar_period_cum_deaths_28
  @quar_period_short
  Scenario: quar_period_cum_deaths_28
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @quar_period_cum_deaths_29
  @quar_period_short
  Scenario: quar_period_cum_deaths_29
    Given we run the model with quar_period=13
    When we run the model with quar_period=15
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_prob_cum_quarantined_0
  @symp_prob
  Scenario: symp_prob_cum_quarantined_0
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
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @symp_prob_cum_quarantined_1
  @symp_prob
  Scenario: symp_prob_cum_quarantined_1
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @symp_prob_cum_quarantined_2
  @symp_prob
  Scenario: symp_prob_cum_quarantined_2
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.3946267859089032
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @symp_prob_cum_quarantined_3
  @symp_prob
  Scenario: symp_prob_cum_quarantined_3
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.7292420114738518
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
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @symp_prob_cum_quarantined_4
  @symp_prob
  Scenario: symp_prob_cum_quarantined_4
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @symp_prob_cum_quarantined_5
  @symp_prob
  Scenario: symp_prob_cum_quarantined_5
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @symp_prob_cum_quarantined_6
  @symp_prob
  Scenario: symp_prob_cum_quarantined_6
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @symp_prob_cum_quarantined_7
  @symp_prob
  Scenario: symp_prob_cum_quarantined_7
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @symp_prob_cum_quarantined_8
  @symp_prob
  Scenario: symp_prob_cum_quarantined_8
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @symp_prob_cum_quarantined_9
  @symp_prob
  Scenario: symp_prob_cum_quarantined_9
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.3946267859089032
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @symp_prob_cum_quarantined_10
  @symp_prob
  Scenario: symp_prob_cum_quarantined_10
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @symp_prob_cum_quarantined_11
  @symp_prob
  Scenario: symp_prob_cum_quarantined_11
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @symp_prob_cum_quarantined_12
  @symp_prob
  Scenario: symp_prob_cum_quarantined_12
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 13013               |
    | pop_infected    | 295                 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @symp_prob_cum_quarantined_13
  @symp_prob
  Scenario: symp_prob_cum_quarantined_13
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @symp_prob_cum_quarantined_14
  @symp_prob
  Scenario: symp_prob_cum_quarantined_14
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.3946267859089032
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @symp_prob_cum_quarantined_15
  @symp_prob
  Scenario: symp_prob_cum_quarantined_15
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @symp_prob_cum_quarantined_16
  @symp_prob
  Scenario: symp_prob_cum_quarantined_16
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @symp_prob_cum_quarantined_17
  @symp_prob
  Scenario: symp_prob_cum_quarantined_17
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @symp_prob_cum_quarantined_18
  @symp_prob
  Scenario: symp_prob_cum_quarantined_18
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @symp_prob_cum_quarantined_19
  @symp_prob
  Scenario: symp_prob_cum_quarantined_19
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @symp_prob_cum_quarantined_20
  @symp_prob
  Scenario: symp_prob_cum_quarantined_20
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @symp_prob_cum_quarantined_21
  @symp_prob
  Scenario: symp_prob_cum_quarantined_21
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @symp_prob_cum_quarantined_22
  @symp_prob
  Scenario: symp_prob_cum_quarantined_22
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @symp_prob_cum_quarantined_23
  @symp_prob
  Scenario: symp_prob_cum_quarantined_23
    Given we run the model with symp_prob=0.5299357265511195
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
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @symp_prob_cum_quarantined_24
  @symp_prob
  Scenario: symp_prob_cum_quarantined_24
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @symp_prob_cum_quarantined_25
  @symp_prob
  Scenario: symp_prob_cum_quarantined_25
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @symp_prob_cum_quarantined_26
  @symp_prob
  Scenario: symp_prob_cum_quarantined_26
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @symp_prob_cum_quarantined_27
  @symp_prob
  Scenario: symp_prob_cum_quarantined_27
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @symp_prob_cum_quarantined_28
  @symp_prob
  Scenario: symp_prob_cum_quarantined_28
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @symp_prob_cum_quarantined_29
  @symp_prob
  Scenario: symp_prob_cum_quarantined_29
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @symp_prob_cum_quarantined_30
  @symp_prob
  Scenario: symp_prob_cum_quarantined_30
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @symp_prob_cum_infections_0
  @symp_prob
  Scenario: symp_prob_cum_infections_0
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
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_prob_cum_infections_1
  @symp_prob
  Scenario: symp_prob_cum_infections_1
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_prob_cum_infections_2
  @symp_prob
  Scenario: symp_prob_cum_infections_2
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.3946267859089032
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
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_prob_cum_infections_3
  @symp_prob
  Scenario: symp_prob_cum_infections_3
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_prob_cum_infections_4
  @symp_prob
  Scenario: symp_prob_cum_infections_4
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_prob_cum_infections_5
  @symp_prob
  Scenario: symp_prob_cum_infections_5
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_prob_cum_infections_6
  @symp_prob
  Scenario: symp_prob_cum_infections_6
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_prob_cum_infections_7
  @symp_prob
  Scenario: symp_prob_cum_infections_7
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_prob_cum_infections_8
  @symp_prob
  Scenario: symp_prob_cum_infections_8
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_prob_cum_infections_9
  @symp_prob
  Scenario: symp_prob_cum_infections_9
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.3946267859089032
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_prob_cum_infections_10
  @symp_prob
  Scenario: symp_prob_cum_infections_10
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_prob_cum_infections_11
  @symp_prob
  Scenario: symp_prob_cum_infections_11
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_prob_cum_infections_12
  @symp_prob
  Scenario: symp_prob_cum_infections_12
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 295                 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_prob_cum_infections_13
  @symp_prob
  Scenario: symp_prob_cum_infections_13
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_prob_cum_infections_14
  @symp_prob
  Scenario: symp_prob_cum_infections_14
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.3946267859089032
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_prob_cum_infections_15
  @symp_prob
  Scenario: symp_prob_cum_infections_15
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_prob_cum_infections_16
  @symp_prob
  Scenario: symp_prob_cum_infections_16
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_prob_cum_infections_17
  @symp_prob
  Scenario: symp_prob_cum_infections_17
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_prob_cum_infections_18
  @symp_prob
  Scenario: symp_prob_cum_infections_18
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_prob_cum_infections_19
  @symp_prob
  Scenario: symp_prob_cum_infections_19
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_prob_cum_infections_20
  @symp_prob
  Scenario: symp_prob_cum_infections_20
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_prob_cum_infections_21
  @symp_prob
  Scenario: symp_prob_cum_infections_21
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_prob_cum_infections_22
  @symp_prob
  Scenario: symp_prob_cum_infections_22
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_prob_cum_infections_23
  @symp_prob
  Scenario: symp_prob_cum_infections_23
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_prob_cum_infections_24
  @symp_prob
  Scenario: symp_prob_cum_infections_24
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_prob_cum_infections_25
  @symp_prob
  Scenario: symp_prob_cum_infections_25
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_prob_cum_infections_26
  @symp_prob
  Scenario: symp_prob_cum_infections_26
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_prob_cum_infections_27
  @symp_prob
  Scenario: symp_prob_cum_infections_27
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_prob_cum_infections_28
  @symp_prob
  Scenario: symp_prob_cum_infections_28
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_prob_cum_infections_29
  @symp_prob
  Scenario: symp_prob_cum_infections_29
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_prob_cum_infections_30
  @symp_prob
  Scenario: symp_prob_cum_infections_30
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_prob_cum_deaths_0
  @symp_prob
  Scenario: symp_prob_cum_deaths_0
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
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_prob_cum_deaths_1
  @symp_prob
  Scenario: symp_prob_cum_deaths_1
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_prob_cum_deaths_2
  @symp_prob
  Scenario: symp_prob_cum_deaths_2
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.3946267859089032
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_prob_cum_deaths_3
  @symp_prob
  Scenario: symp_prob_cum_deaths_3
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_prob_cum_deaths_4
  @symp_prob
  Scenario: symp_prob_cum_deaths_4
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_prob_cum_deaths_5
  @symp_prob
  Scenario: symp_prob_cum_deaths_5
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_prob_cum_deaths_6
  @symp_prob
  Scenario: symp_prob_cum_deaths_6
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 13                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_prob_cum_deaths_7
  @symp_prob
  Scenario: symp_prob_cum_deaths_7
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_prob_cum_deaths_8
  @symp_prob
  Scenario: symp_prob_cum_deaths_8
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_prob_cum_deaths_9
  @symp_prob
  Scenario: symp_prob_cum_deaths_9
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.3946267859089032
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_prob_cum_deaths_10
  @symp_prob
  Scenario: symp_prob_cum_deaths_10
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_prob_cum_deaths_11
  @symp_prob
  Scenario: symp_prob_cum_deaths_11
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_prob_cum_deaths_12
  @symp_prob
  Scenario: symp_prob_cum_deaths_12
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 295                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_prob_cum_deaths_13
  @symp_prob
  Scenario: symp_prob_cum_deaths_13
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_prob_cum_deaths_14
  @symp_prob
  Scenario: symp_prob_cum_deaths_14
    Given we run the model with symp_prob=0.20143639198171964
    When we run the model with symp_prob=0.3946267859089032
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_prob_cum_deaths_15
  @symp_prob
  Scenario: symp_prob_cum_deaths_15
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_prob_cum_deaths_16
  @symp_prob
  Scenario: symp_prob_cum_deaths_16
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_prob_cum_deaths_17
  @symp_prob
  Scenario: symp_prob_cum_deaths_17
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_prob_cum_deaths_18
  @symp_prob
  Scenario: symp_prob_cum_deaths_18
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_prob_cum_deaths_19
  @symp_prob
  Scenario: symp_prob_cum_deaths_19
    Given we run the model with symp_prob=0.3946267859089032
    When we run the model with symp_prob=0.5299357265511195
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_prob_cum_deaths_20
  @symp_prob
  Scenario: symp_prob_cum_deaths_20
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_prob_cum_deaths_21
  @symp_prob
  Scenario: symp_prob_cum_deaths_21
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_prob_cum_deaths_22
  @symp_prob
  Scenario: symp_prob_cum_deaths_22
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_prob_cum_deaths_23
  @symp_prob
  Scenario: symp_prob_cum_deaths_23
    Given we run the model with symp_prob=0.5299357265511195
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
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_prob_cum_deaths_24
  @symp_prob
  Scenario: symp_prob_cum_deaths_24
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_prob_cum_deaths_25
  @symp_prob
  Scenario: symp_prob_cum_deaths_25
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_prob_cum_deaths_26
  @symp_prob
  Scenario: symp_prob_cum_deaths_26
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_prob_cum_deaths_27
  @symp_prob
  Scenario: symp_prob_cum_deaths_27
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_prob_cum_deaths_28
  @symp_prob
  Scenario: symp_prob_cum_deaths_28
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_prob_cum_deaths_29
  @symp_prob
  Scenario: symp_prob_cum_deaths_29
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_prob_cum_deaths_30
  @symp_prob
  Scenario: symp_prob_cum_deaths_30
    Given we run the model with symp_prob=0.5299357265511195
    When we run the model with symp_prob=0.7292420114738518
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_prob_cum_quarantined_0
  @asymp_prob
  Scenario: asymp_prob_cum_quarantined_0
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
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_prob_cum_quarantined_1
  @asymp_prob
  Scenario: asymp_prob_cum_quarantined_1
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_prob_cum_quarantined_2
  @asymp_prob
  Scenario: asymp_prob_cum_quarantined_2
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_prob_cum_quarantined_3
  @asymp_prob
  Scenario: asymp_prob_cum_quarantined_3
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_prob_cum_quarantined_4
  @asymp_prob
  Scenario: asymp_prob_cum_quarantined_4
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.39576785318565705
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_prob_cum_quarantined_5
  @asymp_prob
  Scenario: asymp_prob_cum_quarantined_5
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_prob_cum_quarantined_6
  @asymp_prob
  Scenario: asymp_prob_cum_quarantined_6
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.7292420114738518  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_prob_cum_quarantined_7
  @asymp_prob
  Scenario: asymp_prob_cum_quarantined_7
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_prob_cum_quarantined_8
  @asymp_prob
  Scenario: asymp_prob_cum_quarantined_8
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.5320606162934023
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
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_prob_cum_quarantined_9
  @asymp_prob
  Scenario: asymp_prob_cum_quarantined_9
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_prob_cum_quarantined_10
  @asymp_prob
  Scenario: asymp_prob_cum_quarantined_10
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_prob_cum_quarantined_11
  @asymp_prob
  Scenario: asymp_prob_cum_quarantined_11
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.39576785318565705
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_prob_cum_quarantined_12
  @asymp_prob
  Scenario: asymp_prob_cum_quarantined_12
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_prob_cum_quarantined_13
  @asymp_prob
  Scenario: asymp_prob_cum_quarantined_13
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_prob_cum_quarantined_14
  @asymp_prob
  Scenario: asymp_prob_cum_quarantined_14
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_prob_cum_quarantined_15
  @asymp_prob
  Scenario: asymp_prob_cum_quarantined_15
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.39576785318565705
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_prob_cum_quarantined_16
  @asymp_prob
  Scenario: asymp_prob_cum_quarantined_16
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_prob_cum_quarantined_17
  @asymp_prob
  Scenario: asymp_prob_cum_quarantined_17
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_prob_cum_quarantined_18
  @asymp_prob
  Scenario: asymp_prob_cum_quarantined_18
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_prob_cum_quarantined_19
  @asymp_prob
  Scenario: asymp_prob_cum_quarantined_19
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_prob_cum_quarantined_20
  @asymp_prob
  Scenario: asymp_prob_cum_quarantined_20
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_prob_cum_quarantined_21
  @asymp_prob
  Scenario: asymp_prob_cum_quarantined_21
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_prob_cum_quarantined_22
  @asymp_prob
  Scenario: asymp_prob_cum_quarantined_22
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_prob_cum_quarantined_23
  @asymp_prob
  Scenario: asymp_prob_cum_quarantined_23
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_prob_cum_quarantined_24
  @asymp_prob
  Scenario: asymp_prob_cum_quarantined_24
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_prob_cum_quarantined_25
  @asymp_prob
  Scenario: asymp_prob_cum_quarantined_25
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_prob_cum_quarantined_26
  @asymp_prob
  Scenario: asymp_prob_cum_quarantined_26
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_prob_cum_quarantined_27
  @asymp_prob
  Scenario: asymp_prob_cum_quarantined_27
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_prob_cum_quarantined_28
  @asymp_prob
  Scenario: asymp_prob_cum_quarantined_28
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_prob_cum_quarantined_29
  @asymp_prob
  Scenario: asymp_prob_cum_quarantined_29
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_prob_cum_quarantined_30
  @asymp_prob
  Scenario: asymp_prob_cum_quarantined_30
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_prob_cum_quarantined_31
  @asymp_prob
  Scenario: asymp_prob_cum_quarantined_31
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_prob_cum_infections_0
  @asymp_prob
  Scenario: asymp_prob_cum_infections_0
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
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @asymp_prob_cum_infections_1
  @asymp_prob
  Scenario: asymp_prob_cum_infections_1
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @asymp_prob_cum_infections_2
  @asymp_prob
  Scenario: asymp_prob_cum_infections_2
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.5320606162934023
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
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @asymp_prob_cum_infections_3
  @asymp_prob
  Scenario: asymp_prob_cum_infections_3
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @asymp_prob_cum_infections_4
  @asymp_prob
  Scenario: asymp_prob_cum_infections_4
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.39576785318565705
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @asymp_prob_cum_infections_5
  @asymp_prob
  Scenario: asymp_prob_cum_infections_5
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @asymp_prob_cum_infections_6
  @asymp_prob
  Scenario: asymp_prob_cum_infections_6
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @asymp_prob_cum_infections_7
  @asymp_prob
  Scenario: asymp_prob_cum_infections_7
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @asymp_prob_cum_infections_8
  @asymp_prob
  Scenario: asymp_prob_cum_infections_8
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.5320606162934023
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
    | household_size  | 5.916              |
    Then the cum_infections should decrease

  @asymp_prob_cum_infections_9
  @asymp_prob
  Scenario: asymp_prob_cum_infections_9
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @asymp_prob_cum_infections_10
  @asymp_prob
  Scenario: asymp_prob_cum_infections_10
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @asymp_prob_cum_infections_11
  @asymp_prob
  Scenario: asymp_prob_cum_infections_11
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.39576785318565705
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @asymp_prob_cum_infections_12
  @asymp_prob
  Scenario: asymp_prob_cum_infections_12
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @asymp_prob_cum_infections_13
  @asymp_prob
  Scenario: asymp_prob_cum_infections_13
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @asymp_prob_cum_infections_14
  @asymp_prob
  Scenario: asymp_prob_cum_infections_14
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @asymp_prob_cum_infections_15
  @asymp_prob
  Scenario: asymp_prob_cum_infections_15
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.39576785318565705
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @asymp_prob_cum_infections_16
  @asymp_prob
  Scenario: asymp_prob_cum_infections_16
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @asymp_prob_cum_infections_17
  @asymp_prob
  Scenario: asymp_prob_cum_infections_17
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @asymp_prob_cum_infections_18
  @asymp_prob
  Scenario: asymp_prob_cum_infections_18
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @asymp_prob_cum_infections_19
  @asymp_prob
  Scenario: asymp_prob_cum_infections_19
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @asymp_prob_cum_infections_20
  @asymp_prob
  Scenario: asymp_prob_cum_infections_20
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @asymp_prob_cum_infections_21
  @asymp_prob
  Scenario: asymp_prob_cum_infections_21
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @asymp_prob_cum_infections_22
  @asymp_prob
  Scenario: asymp_prob_cum_infections_22
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @asymp_prob_cum_infections_23
  @asymp_prob
  Scenario: asymp_prob_cum_infections_23
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @asymp_prob_cum_infections_24
  @asymp_prob
  Scenario: asymp_prob_cum_infections_24
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @asymp_prob_cum_infections_25
  @asymp_prob
  Scenario: asymp_prob_cum_infections_25
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @asymp_prob_cum_infections_26
  @asymp_prob
  Scenario: asymp_prob_cum_infections_26
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @asymp_prob_cum_infections_27
  @asymp_prob
  Scenario: asymp_prob_cum_infections_27
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @asymp_prob_cum_infections_28
  @asymp_prob
  Scenario: asymp_prob_cum_infections_28
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @asymp_prob_cum_infections_29
  @asymp_prob
  Scenario: asymp_prob_cum_infections_29
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @asymp_prob_cum_infections_30
  @asymp_prob
  Scenario: asymp_prob_cum_infections_30
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @asymp_prob_cum_infections_31
  @asymp_prob
  Scenario: asymp_prob_cum_infections_31
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @asymp_prob_cum_deaths_0
  @asymp_prob
  Scenario: asymp_prob_cum_deaths_0
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
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_prob_cum_deaths_1
  @asymp_prob
  Scenario: asymp_prob_cum_deaths_1
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_prob_cum_deaths_2
  @asymp_prob
  Scenario: asymp_prob_cum_deaths_2
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.5320606162934023
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
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_prob_cum_deaths_3
  @asymp_prob
  Scenario: asymp_prob_cum_deaths_3
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_prob_cum_deaths_4
  @asymp_prob
  Scenario: asymp_prob_cum_deaths_4
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.39576785318565705
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_prob_cum_deaths_5
  @asymp_prob
  Scenario: asymp_prob_cum_deaths_5
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_prob_cum_deaths_6
  @asymp_prob
  Scenario: asymp_prob_cum_deaths_6
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_prob_cum_deaths_7
  @asymp_prob
  Scenario: asymp_prob_cum_deaths_7
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_prob_cum_deaths_8
  @asymp_prob
  Scenario: asymp_prob_cum_deaths_8
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value              |
    | n_days          | 80                 |
    | quar_period     | 11                 |
    | pop_size        | 17019              |
    | pop_infected    | 217                |
    | symp_prob       | 0.3946267859089032 |
    | symp_quar_prob  | 0.0456075960115124 |
    | asymp_quar_prob | 0.5362647235083882 |
    | trace_probs     | 0.4179307148516287 |
    | household_size  | 5.916              |
    Then the cum_deaths should remain the same

  @asymp_prob_cum_deaths_9
  @asymp_prob
  Scenario: asymp_prob_cum_deaths_9
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_prob_cum_deaths_10
  @asymp_prob
  Scenario: asymp_prob_cum_deaths_10
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_prob_cum_deaths_11
  @asymp_prob
  Scenario: asymp_prob_cum_deaths_11
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.39576785318565705
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_prob_cum_deaths_12
  @asymp_prob
  Scenario: asymp_prob_cum_deaths_12
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.5320606162934023
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_prob_cum_deaths_13
  @asymp_prob
  Scenario: asymp_prob_cum_deaths_13
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
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_prob_cum_deaths_14
  @asymp_prob
  Scenario: asymp_prob_cum_deaths_14
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_prob_cum_deaths_15
  @asymp_prob
  Scenario: asymp_prob_cum_deaths_15
    Given we run the model with asymp_prob=0.06566236367037942
    When we run the model with asymp_prob=0.39576785318565705
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 15                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_prob_cum_deaths_16
  @asymp_prob
  Scenario: asymp_prob_cum_deaths_16
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_prob_cum_deaths_17
  @asymp_prob
  Scenario: asymp_prob_cum_deaths_17
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_prob_cum_deaths_18
  @asymp_prob
  Scenario: asymp_prob_cum_deaths_18
    Given we run the model with asymp_prob=0.39576785318565705
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_prob_cum_deaths_19
  @asymp_prob
  Scenario: asymp_prob_cum_deaths_19
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_prob_cum_deaths_20
  @asymp_prob
  Scenario: asymp_prob_cum_deaths_20
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_prob_cum_deaths_21
  @asymp_prob
  Scenario: asymp_prob_cum_deaths_21
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_prob_cum_deaths_22
  @asymp_prob
  Scenario: asymp_prob_cum_deaths_22
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_prob_cum_deaths_23
  @asymp_prob
  Scenario: asymp_prob_cum_deaths_23
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_prob_cum_deaths_24
  @asymp_prob
  Scenario: asymp_prob_cum_deaths_24
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_prob_cum_deaths_25
  @asymp_prob
  Scenario: asymp_prob_cum_deaths_25
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_prob_cum_deaths_26
  @asymp_prob
  Scenario: asymp_prob_cum_deaths_26
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_prob_cum_deaths_27
  @asymp_prob
  Scenario: asymp_prob_cum_deaths_27
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_prob_cum_deaths_28
  @asymp_prob
  Scenario: asymp_prob_cum_deaths_28
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_prob_cum_deaths_29
  @asymp_prob
  Scenario: asymp_prob_cum_deaths_29
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_prob_cum_deaths_30
  @asymp_prob
  Scenario: asymp_prob_cum_deaths_30
    Given we run the model with asymp_prob=0.5320606162934023
    When we run the model with asymp_prob=0.6240963641577594
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_prob_cum_deaths_31
  @asymp_prob
  Scenario: asymp_prob_cum_deaths_31
    Given we run the model with asymp_prob=0.5320606162934023
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
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_quar_prob_cum_quarantined_0
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_quarantined_0
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
    | household_size  | 5.916               |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_cum_quarantined_1
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_quarantined_1
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.6240963641577594  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_cum_quarantined_2
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_quarantined_2
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.0456075960115124
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_cum_quarantined_3
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_quarantined_3
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_cum_quarantined_4
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_quarantined_4
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_cum_quarantined_5
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_quarantined_5
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 17019               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_cum_quarantined_6
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_quarantined_6
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_cum_quarantined_7
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_quarantined_7
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_cum_quarantined_8
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_quarantined_8
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_cum_quarantined_9
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_quarantined_9
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.0456075960115124
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_cum_quarantined_10
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_quarantined_10
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value              |
    | n_days          | 80                 |
    | quar_period     | 15                 |
    | pop_size        | 10000              |
    | pop_infected    | 217                |
    | symp_prob       | 0.3946267859089032 |
    | asymp_prob      | 0.6240963641577594 |
    | asymp_quar_prob | 0.6280014380485361 |
    | trace_probs     | 0.7734426077281416 |
    | household_size  | 5.916              |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_cum_quarantined_11
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_quarantined_11
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_cum_quarantined_12
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_quarantined_12
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_cum_quarantined_13
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_quarantined_13
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.0456075960115124
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_cum_quarantined_14
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_quarantined_14
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_cum_quarantined_15
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_quarantined_15
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_cum_quarantined_16
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_quarantined_16
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_cum_quarantined_17
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_quarantined_17
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_cum_quarantined_18
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_quarantined_18
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_cum_quarantined_19
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_quarantined_19
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_cum_quarantined_20
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_quarantined_20
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_cum_quarantined_21
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_quarantined_21
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_cum_quarantined_22
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_quarantined_22
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_cum_quarantined_23
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_quarantined_23
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 13                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_cum_quarantined_24
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_quarantined_24
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_cum_quarantined_25
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_quarantined_25
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_cum_quarantined_26
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_quarantined_26
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_cum_quarantined_27
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_quarantined_27
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.6240963641577594  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_cum_quarantined_28
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_quarantined_28
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_cum_quarantined_29
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_quarantined_29
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should remain the same

  @symp_quar_prob_cum_infections_0
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_infections_0
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
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_quar_prob_cum_infections_1
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_infections_1
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_quar_prob_cum_infections_2
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_infections_2
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.0456075960115124
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
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_quar_prob_cum_infections_3
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_infections_3
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.14055901473290044
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
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_quar_prob_cum_infections_4
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_infections_4
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_quar_prob_cum_infections_5
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_infections_5
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_quar_prob_cum_infections_6
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_infections_6
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 13                  |
    | pop_size        | 13013               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_quar_prob_cum_infections_7
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_infections_7
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_quar_prob_cum_infections_8
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_infections_8
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_quar_prob_cum_infections_9
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_infections_9
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.0456075960115124
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_quar_prob_cum_infections_10
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_infections_10
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_quar_prob_cum_infections_11
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_infections_11
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
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
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_quar_prob_cum_infections_12
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_infections_12
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_quar_prob_cum_infections_13
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_infections_13
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.0456075960115124
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_quar_prob_cum_infections_14
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_infections_14
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_quar_prob_cum_infections_15
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_infections_15
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_quar_prob_cum_infections_16
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_infections_16
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_quar_prob_cum_infections_17
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_infections_17
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_quar_prob_cum_infections_18
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_infections_18
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_quar_prob_cum_infections_19
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_infections_19
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.6240963641577594  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_quar_prob_cum_infections_20
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_infections_20
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_quar_prob_cum_infections_21
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_infections_21
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_quar_prob_cum_infections_22
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_infections_22
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_quar_prob_cum_infections_23
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_infections_23
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 13                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_quar_prob_cum_infections_24
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_infections_24
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_quar_prob_cum_infections_25
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_infections_25
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_quar_prob_cum_infections_26
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_infections_26
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_quar_prob_cum_infections_27
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_infections_27
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.6240963641577594  |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_quar_prob_cum_infections_28
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_infections_28
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_quar_prob_cum_infections_29
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_infections_29
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @symp_quar_prob_cum_deaths_0
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_deaths_0
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
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_quar_prob_cum_deaths_1
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_deaths_1
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_quar_prob_cum_deaths_2
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_deaths_2
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.0456075960115124
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_quar_prob_cum_deaths_3
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_deaths_3
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_quar_prob_cum_deaths_4
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_deaths_4
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_quar_prob_cum_deaths_5
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_deaths_5
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 17019               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_quar_prob_cum_deaths_6
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_deaths_6
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 13                  |
    | pop_size        | 13013               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_quar_prob_cum_deaths_7
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_deaths_7
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_quar_prob_cum_deaths_8
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_deaths_8
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_quar_prob_cum_deaths_9
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_deaths_9
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.0456075960115124
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_quar_prob_cum_deaths_10
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_deaths_10
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_quar_prob_cum_deaths_11
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_deaths_11
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_quar_prob_cum_deaths_12
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_deaths_12
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_quar_prob_cum_deaths_13
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_deaths_13
    Given we run the model with symp_quar_prob=0.02312927617193368
    When we run the model with symp_quar_prob=0.0456075960115124
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_quar_prob_cum_deaths_14
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_deaths_14
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
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
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_quar_prob_cum_deaths_15
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_deaths_15
    Given we run the model with symp_quar_prob=0.0456075960115124
    When we run the model with symp_quar_prob=0.14055901473290044
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_quar_prob_cum_deaths_16
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_deaths_16
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_quar_prob_cum_deaths_17
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_deaths_17
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_quar_prob_cum_deaths_18
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_deaths_18
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_quar_prob_cum_deaths_19
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_deaths_19
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.6240963641577594  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_quar_prob_cum_deaths_20
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_deaths_20
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_quar_prob_cum_deaths_21
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_deaths_21
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_quar_prob_cum_deaths_22
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_deaths_22
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_quar_prob_cum_deaths_23
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_deaths_23
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_quar_prob_cum_deaths_24
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_deaths_24
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_quar_prob_cum_deaths_25
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_deaths_25
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 13                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_quar_prob_cum_deaths_26
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_deaths_26
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_quar_prob_cum_deaths_27
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_deaths_27
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.6240963641577594  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_quar_prob_cum_deaths_28
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_deaths_28
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.06566236367037942 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @symp_quar_prob_cum_deaths_29
  @symp_quar_prob
  Scenario: symp_quar_prob_cum_deaths_29
    Given we run the model with symp_quar_prob=0.14055901473290044
    When we run the model with symp_quar_prob=0.32012755679683896
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_cum_quarantined_0
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_quarantined_0
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
    | household_size | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_cum_quarantined_1
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_quarantined_1
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 17019               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.5299357265511195  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_cum_quarantined_2
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_quarantined_2
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.7734426077281416  |
    | household_size | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_cum_quarantined_3
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_quarantined_3
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 15                  |
    | pop_size       | 11593               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.39576785318565705 |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.27025117739698024 |
    | household_size | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_cum_quarantined_4
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_quarantined_4
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.6240963641577594  |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.27025117739698024 |
    | household_size | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_cum_quarantined_5
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_quarantined_5
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.5299357265511195  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_cum_quarantined_6
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_quarantined_6
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 11593               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.39576785318565705 |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.4179307148516287  |
    | household_size | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_cum_quarantined_7
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_quarantined_7
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.7734426077281416  |
    | household_size | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_cum_quarantined_8
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_quarantined_8
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 13                  |
    | pop_size       | 10000               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.5299357265511195  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.27025117739698024 |
    | household_size | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_cum_quarantined_9
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_quarantined_9
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 17019               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.39576785318565705 |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_cum_quarantined_10
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_quarantined_10
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.2404924383007006
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 13                  |
    | pop_size       | 10000               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.7292420114738518  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.7734426077281416  |
    | household_size | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_cum_quarantined_11
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_quarantined_11
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 13                  |
    | pop_size       | 11593               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_cum_quarantined_12
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_quarantined_12
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 11                  |
    | pop_size       | 17019               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.5299357265511195  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_cum_quarantined_13
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_quarantined_13
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 13013               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_cum_quarantined_14
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_quarantined_14
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.2404924383007006
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 11593               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_cum_quarantined_15
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_quarantined_15
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 15                  |
    | pop_size       | 13013               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.39576785318565705 |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.7734426077281416  |
    | household_size | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_cum_quarantined_16
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_quarantined_16
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 11593               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.5299357265511195  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_cum_quarantined_17
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_quarantined_17
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.7734426077281416  |
    | household_size | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_cum_quarantined_18
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_quarantined_18
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.2404924383007006
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 15                  |
    | pop_size       | 10000               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.27025117739698024 |
    | household_size | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_cum_quarantined_19
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_quarantined_19
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
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.4179307148516287  |
    | household_size | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_cum_quarantined_20
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_quarantined_20
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.27025117739698024 |
    | household_size | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_cum_quarantined_21
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_quarantined_21
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.7292420114738518  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_cum_quarantined_22
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_quarantined_22
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.5299357265511195  |
    | asymp_prob     | 0.39576785318565705 |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_cum_quarantined_23
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_quarantined_23
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 96                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.7292420114738518  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_cum_quarantined_24
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_quarantined_24
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 11                  |
    | pop_size       | 17019               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.4179307148516287  |
    | household_size | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_cum_quarantined_25
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_quarantined_25
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 11593               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.7292420114738518  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_cum_quarantined_26
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_quarantined_26
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
    | household_size | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_cum_quarantined_27
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_quarantined_27
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 13                  |
    | pop_size       | 17019               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_cum_quarantined_28
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_quarantined_28
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 11                  |
    | pop_size       | 13013               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_cum_quarantined_29
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_quarantined_29
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 11                  |
    | pop_size       | 11593               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.27025117739698024 |
    | household_size | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_cum_quarantined_30
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_quarantined_30
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 11                  |
    | pop_size       | 17019               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_quarantined should decrease

  @asymp_quar_prob_cum_infections_0
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_infections_0
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
    | household_size | 5.916               |
    Then the cum_infections should decrease

  @asymp_quar_prob_cum_infections_1
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_infections_1
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.5299357265511195  |
    | asymp_prob     | 0.6240963641577594  |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_infections should decrease

  @asymp_quar_prob_cum_infections_2
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_infections_2
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_infections should decrease

  @asymp_quar_prob_cum_infections_3
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_infections_3
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
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
    | household_size | 5.916               |
    Then the cum_infections should decrease

  @asymp_quar_prob_cum_infections_4
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_infections_4
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 11                  |
    | pop_size       | 13013               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.6240963641577594  |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_infections should decrease

  @asymp_quar_prob_cum_infections_5
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_infections_5
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.5299357265511195  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_infections should decrease

  @asymp_quar_prob_cum_infections_6
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_infections_6
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 11593               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.39576785318565705 |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.4179307148516287  |
    | household_size | 5.916               |
    Then the cum_infections should decrease

  @asymp_quar_prob_cum_infections_7
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_infections_7
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.7734426077281416  |
    | household_size | 5.916               |
    Then the cum_infections should decrease

  @asymp_quar_prob_cum_infections_8
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_infections_8
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
    | trace_probs    | 0.27025117739698024 |
    | household_size | 5.916               |
    Then the cum_infections should decrease

  @asymp_quar_prob_cum_infections_9
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_infections_9
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 17019               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.39576785318565705 |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_infections should decrease

  @asymp_quar_prob_cum_infections_10
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_infections_10
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.2404924383007006
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 13                  |
    | pop_size       | 10000               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.7734426077281416  |
    | household_size | 5.916               |
    Then the cum_infections should decrease

  @asymp_quar_prob_cum_infections_11
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_infections_11
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 13                  |
    | pop_size       | 11593               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.6240963641577594  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_infections should decrease

  @asymp_quar_prob_cum_infections_12
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_infections_12
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 11                  |
    | pop_size       | 17019               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.4179307148516287  |
    | household_size | 5.916               |
    Then the cum_infections should decrease

  @asymp_quar_prob_cum_infections_13
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_infections_13
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value              |
    | n_days         | 80                 |
    | quar_period    | 11                 |
    | pop_size       | 13013              |
    | pop_infected   | 400                |
    | symp_prob      | 0.3946267859089032 |
    | asymp_prob     | 0.6240963641577594 |
    | symp_quar_prob | 0.0456075960115124 |
    | trace_probs    | 0.4179307148516287 |
    | household_size | 5.916              |
    Then the cum_infections should decrease

  @asymp_quar_prob_cum_infections_14
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_infections_14
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.2404924383007006
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 11593               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.27025117739698024 |
    | household_size | 5.916               |
    Then the cum_infections should decrease

  @asymp_quar_prob_cum_infections_15
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_infections_15
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 15                  |
    | pop_size       | 13013               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.39576785318565705 |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_infections should decrease

  @asymp_quar_prob_cum_infections_16
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_infections_16
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 11593               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_infections should decrease

  @asymp_quar_prob_cum_infections_17
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_infections_17
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 96                  |
    | quar_period    | 13                  |
    | pop_size       | 10000               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.6240963641577594  |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.7734426077281416  |
    | household_size | 5.916               |
    Then the cum_infections should decrease

  @asymp_quar_prob_cum_infections_18
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_infections_18
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.2404924383007006
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 15                  |
    | pop_size       | 17019               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_infections should decrease

  @asymp_quar_prob_cum_infections_19
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_infections_19
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
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.4179307148516287  |
    | household_size | 5.916               |
    Then the cum_infections should decrease

  @asymp_quar_prob_cum_infections_20
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_infections_20
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.27025117739698024 |
    | household_size | 5.916               |
    Then the cum_infections should decrease

  @asymp_quar_prob_cum_infections_21
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_infections_21
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_infections should decrease

  @asymp_quar_prob_cum_infections_22
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_infections_22
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
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_infections should decrease

  @asymp_quar_prob_cum_infections_23
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_infections_23
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 96                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.7292420114738518  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_infections should decrease

  @asymp_quar_prob_cum_infections_24
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_infections_24
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 15                  |
    | pop_size       | 17019               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.4179307148516287  |
    | household_size | 5.916               |
    Then the cum_infections should decrease

  @asymp_quar_prob_cum_infections_25
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_infections_25
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 11593               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_infections should decrease

  @asymp_quar_prob_cum_infections_26
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_infections_26
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 17019               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.6240963641577594  |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.27025117739698024 |
    | household_size | 5.916               |
    Then the cum_infections should decrease

  @asymp_quar_prob_cum_infections_27
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_infections_27
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 11                  |
    | pop_size       | 17019               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.7734426077281416  |
    | household_size | 5.916               |
    Then the cum_infections should decrease

  @asymp_quar_prob_cum_infections_28
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_infections_28
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 11                  |
    | pop_size       | 13013               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.7734426077281416  |
    | household_size | 5.916               |
    Then the cum_infections should decrease

  @asymp_quar_prob_cum_infections_29
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_infections_29
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 11                  |
    | pop_size       | 11593               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.27025117739698024 |
    | household_size | 5.916               |
    Then the cum_infections should decrease

  @asymp_quar_prob_cum_infections_30
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_infections_30
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 11                  |
    | pop_size       | 17019               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_infections should decrease

  @asymp_quar_prob_cum_deaths_0
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_deaths_0
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
    | household_size | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_cum_deaths_1
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_deaths_1
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 17019               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.5299357265511195  |
    | asymp_prob     | 0.6240963641577594  |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_cum_deaths_2
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_deaths_2
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.7734426077281416  |
    | household_size | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_cum_deaths_3
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_deaths_3
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 15                  |
    | pop_size       | 11593               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.7292420114738518  |
    | asymp_prob     | 0.39576785318565705 |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.27025117739698024 |
    | household_size | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_cum_deaths_4
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_deaths_4
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 11                  |
    | pop_size       | 13013               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.6240963641577594  |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.27025117739698024 |
    | household_size | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_cum_deaths_5
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_deaths_5
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 15                  |
    | pop_size       | 10000               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.5299357265511195  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_cum_deaths_6
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_deaths_6
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 11593               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.39576785318565705 |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.4179307148516287  |
    | household_size | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_cum_deaths_7
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_deaths_7
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.7734426077281416  |
    | household_size | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_cum_deaths_8
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_deaths_8
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 13                  |
    | pop_size       | 10000               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.27025117739698024 |
    | household_size | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_cum_deaths_9
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_deaths_9
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 17019               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.39576785318565705 |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_cum_deaths_10
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_deaths_10
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.2404924383007006
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 13                  |
    | pop_size       | 10000               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.7292420114738518  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.7734426077281416  |
    | household_size | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_cum_deaths_11
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_deaths_11
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 13                  |
    | pop_size       | 11593               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.6240963641577594  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_cum_deaths_12
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_deaths_12
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 11                  |
    | pop_size       | 17019               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.5299357265511195  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_cum_deaths_13
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_deaths_13
    Given we run the model with asymp_quar_prob=0.2404924383007006
    When we run the model with asymp_quar_prob=0.5362647235083882
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 13013               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.6240963641577594  |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_cum_deaths_14
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_deaths_14
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.2404924383007006
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 11593               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.27025117739698024 |
    | household_size | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_cum_deaths_15
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_deaths_15
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 15                  |
    | pop_size       | 13013               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.39576785318565705 |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_cum_deaths_16
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_deaths_16
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 11593               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.5299357265511195  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.7734426077281416  |
    | household_size | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_cum_deaths_17
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_deaths_17
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 13                  |
    | pop_size       | 10000               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.6240963641577594  |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_cum_deaths_18
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_deaths_18
    Given we run the model with asymp_quar_prob=0.16550077992524106
    When we run the model with asymp_quar_prob=0.2404924383007006
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 15                  |
    | pop_size       | 17019               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_cum_deaths_19
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_deaths_19
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
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.4179307148516287  |
    | household_size | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_cum_deaths_20
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_deaths_20
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.27025117739698024 |
    | household_size | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_cum_deaths_21
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_deaths_21
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 80                  |
    | quar_period    | 11                  |
    | pop_size       | 17019               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.7292420114738518  |
    | asymp_prob     | 0.6240963641577594  |
    | symp_quar_prob | 0.02312927617193368 |
    | trace_probs    | 0.4179307148516287  |
    | household_size | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_cum_deaths_22
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_deaths_22
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
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_cum_deaths_23
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_deaths_23
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
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_cum_deaths_24
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_deaths_24
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 295                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.4179307148516287  |
    | household_size | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_cum_deaths_25
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_deaths_25
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 90                  |
    | quar_period    | 11                  |
    | pop_size       | 11593               |
    | pop_infected   | 140                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.0456075960115124  |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_cum_deaths_26
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_deaths_26
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
    | trace_probs    | 0.27025117739698024 |
    | household_size | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_cum_deaths_27
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_deaths_27
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 11                  |
    | pop_size       | 17019               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.3946267859089032  |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.7734426077281416  |
    | household_size | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_cum_deaths_28
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_deaths_28
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 11                  |
    | pop_size       | 13013               |
    | pop_infected   | 400                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.5320606162934023  |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.7734426077281416  |
    | household_size | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_cum_deaths_29
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_deaths_29
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 11                  |
    | pop_size       | 11593               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.32012755679683896 |
    | trace_probs    | 0.27025117739698024 |
    | household_size | 5.916               |
    Then the cum_deaths should remain the same

  @asymp_quar_prob_cum_deaths_30
  @asymp_quar_prob
  Scenario: asymp_quar_prob_cum_deaths_30
    Given we run the model with asymp_quar_prob=0.5362647235083882
    When we run the model with asymp_quar_prob=0.6280014380485361
    And effect modifier values
    | modifier       | value               |
    | n_days         | 66                  |
    | quar_period    | 11                  |
    | pop_size       | 10000               |
    | pop_infected   | 217                 |
    | symp_prob      | 0.20143639198171964 |
    | asymp_prob     | 0.06566236367037942 |
    | symp_quar_prob | 0.14055901473290044 |
    | trace_probs    | 0.09610948155767196 |
    | household_size | 5.916               |
    Then the cum_deaths should remain the same

  @trace_probs_cum_quarantined_0
  @trace_probs
  Scenario: trace_probs_cum_quarantined_0
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
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @trace_probs_cum_quarantined_1
  @trace_probs
  Scenario: trace_probs_cum_quarantined_1
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @trace_probs_cum_quarantined_2
  @trace_probs
  Scenario: trace_probs_cum_quarantined_2
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.6280014380485361  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @trace_probs_cum_quarantined_3
  @trace_probs
  Scenario: trace_probs_cum_quarantined_3
    Given we run the model with trace_probs=0.27025117739698024
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
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @trace_probs_cum_quarantined_4
  @trace_probs
  Scenario: trace_probs_cum_quarantined_4
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.6280014380485361  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @trace_probs_cum_quarantined_5
  @trace_probs
  Scenario: trace_probs_cum_quarantined_5
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.27025117739698024
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 15                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @trace_probs_cum_quarantined_6
  @trace_probs
  Scenario: trace_probs_cum_quarantined_6
    Given we run the model with trace_probs=0.09610948155767196
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
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @trace_probs_cum_quarantined_7
  @trace_probs
  Scenario: trace_probs_cum_quarantined_7
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
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @trace_probs_cum_quarantined_8
  @trace_probs
  Scenario: trace_probs_cum_quarantined_8
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @trace_probs_cum_quarantined_9
  @trace_probs
  Scenario: trace_probs_cum_quarantined_9
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @trace_probs_cum_quarantined_10
  @trace_probs
  Scenario: trace_probs_cum_quarantined_10
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @trace_probs_cum_quarantined_11
  @trace_probs
  Scenario: trace_probs_cum_quarantined_11
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.27025117739698024
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @trace_probs_cum_quarantined_12
  @trace_probs
  Scenario: trace_probs_cum_quarantined_12
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @trace_probs_cum_quarantined_13
  @trace_probs
  Scenario: trace_probs_cum_quarantined_13
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @trace_probs_cum_quarantined_14
  @trace_probs
  Scenario: trace_probs_cum_quarantined_14
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.27025117739698024
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.5362647235083882  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @trace_probs_cum_quarantined_15
  @trace_probs
  Scenario: trace_probs_cum_quarantined_15
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @trace_probs_cum_quarantined_16
  @trace_probs
  Scenario: trace_probs_cum_quarantined_16
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.27025117739698024
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.6280014380485361  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @trace_probs_cum_quarantined_17
  @trace_probs
  Scenario: trace_probs_cum_quarantined_17
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @trace_probs_cum_quarantined_18
  @trace_probs
  Scenario: trace_probs_cum_quarantined_18
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @trace_probs_cum_quarantined_19
  @trace_probs
  Scenario: trace_probs_cum_quarantined_19
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @trace_probs_cum_quarantined_20
  @trace_probs
  Scenario: trace_probs_cum_quarantined_20
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @trace_probs_cum_quarantined_21
  @trace_probs
  Scenario: trace_probs_cum_quarantined_21
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
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @trace_probs_cum_quarantined_22
  @trace_probs
  Scenario: trace_probs_cum_quarantined_22
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @trace_probs_cum_quarantined_23
  @trace_probs
  Scenario: trace_probs_cum_quarantined_23
    Given we run the model with trace_probs=0.4179307148516287
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
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @trace_probs_cum_quarantined_24
  @trace_probs
  Scenario: trace_probs_cum_quarantined_24
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @trace_probs_cum_quarantined_25
  @trace_probs
  Scenario: trace_probs_cum_quarantined_25
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @trace_probs_cum_quarantined_26
  @trace_probs
  Scenario: trace_probs_cum_quarantined_26
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @trace_probs_cum_quarantined_27
  @trace_probs
  Scenario: trace_probs_cum_quarantined_27
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
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @trace_probs_cum_quarantined_28
  @trace_probs
  Scenario: trace_probs_cum_quarantined_28
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @trace_probs_cum_quarantined_29
  @trace_probs
  Scenario: trace_probs_cum_quarantined_29
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @trace_probs_cum_quarantined_30
  @trace_probs
  Scenario: trace_probs_cum_quarantined_30
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
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @trace_probs_cum_quarantined_31
  @trace_probs
  Scenario: trace_probs_cum_quarantined_31
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @trace_probs_cum_infections_0
  @trace_probs
  Scenario: trace_probs_cum_infections_0
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
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @trace_probs_cum_infections_1
  @trace_probs
  Scenario: trace_probs_cum_infections_1
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @trace_probs_cum_infections_2
  @trace_probs
  Scenario: trace_probs_cum_infections_2
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @trace_probs_cum_infections_3
  @trace_probs
  Scenario: trace_probs_cum_infections_3
    Given we run the model with trace_probs=0.27025117739698024
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
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @trace_probs_cum_infections_4
  @trace_probs
  Scenario: trace_probs_cum_infections_4
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @trace_probs_cum_infections_5
  @trace_probs
  Scenario: trace_probs_cum_infections_5
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.27025117739698024
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 15                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @trace_probs_cum_infections_6
  @trace_probs
  Scenario: trace_probs_cum_infections_6
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @trace_probs_cum_infections_7
  @trace_probs
  Scenario: trace_probs_cum_infections_7
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
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @trace_probs_cum_infections_8
  @trace_probs
  Scenario: trace_probs_cum_infections_8
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @trace_probs_cum_infections_9
  @trace_probs
  Scenario: trace_probs_cum_infections_9
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @trace_probs_cum_infections_10
  @trace_probs
  Scenario: trace_probs_cum_infections_10
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @trace_probs_cum_infections_11
  @trace_probs
  Scenario: trace_probs_cum_infections_11
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.27025117739698024
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @trace_probs_cum_infections_12
  @trace_probs
  Scenario: trace_probs_cum_infections_12
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @trace_probs_cum_infections_13
  @trace_probs
  Scenario: trace_probs_cum_infections_13
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @trace_probs_cum_infections_14
  @trace_probs
  Scenario: trace_probs_cum_infections_14
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.27025117739698024
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.5362647235083882  |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @trace_probs_cum_infections_15
  @trace_probs
  Scenario: trace_probs_cum_infections_15
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @trace_probs_cum_infections_16
  @trace_probs
  Scenario: trace_probs_cum_infections_16
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.27025117739698024
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.6280014380485361  |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @trace_probs_cum_infections_17
  @trace_probs
  Scenario: trace_probs_cum_infections_17
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @trace_probs_cum_infections_18
  @trace_probs
  Scenario: trace_probs_cum_infections_18
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @trace_probs_cum_infections_19
  @trace_probs
  Scenario: trace_probs_cum_infections_19
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @trace_probs_cum_infections_20
  @trace_probs
  Scenario: trace_probs_cum_infections_20
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @trace_probs_cum_infections_21
  @trace_probs
  Scenario: trace_probs_cum_infections_21
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
    | asymp_quar_prob | 0.5362647235083882  |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @trace_probs_cum_infections_22
  @trace_probs
  Scenario: trace_probs_cum_infections_22
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @trace_probs_cum_infections_23
  @trace_probs
  Scenario: trace_probs_cum_infections_23
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @trace_probs_cum_infections_24
  @trace_probs
  Scenario: trace_probs_cum_infections_24
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @trace_probs_cum_infections_25
  @trace_probs
  Scenario: trace_probs_cum_infections_25
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @trace_probs_cum_infections_26
  @trace_probs
  Scenario: trace_probs_cum_infections_26
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @trace_probs_cum_infections_27
  @trace_probs
  Scenario: trace_probs_cum_infections_27
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @trace_probs_cum_infections_28
  @trace_probs
  Scenario: trace_probs_cum_infections_28
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @trace_probs_cum_infections_29
  @trace_probs
  Scenario: trace_probs_cum_infections_29
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @trace_probs_cum_infections_30
  @trace_probs
  Scenario: trace_probs_cum_infections_30
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
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @trace_probs_cum_infections_31
  @trace_probs
  Scenario: trace_probs_cum_infections_31
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | household_size  | 5.916               |
    Then the cum_infections should decrease

  @trace_probs_cum_deaths_0
  @trace_probs
  Scenario: trace_probs_cum_deaths_0
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
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @trace_probs_cum_deaths_1
  @trace_probs
  Scenario: trace_probs_cum_deaths_1
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @trace_probs_cum_deaths_2
  @trace_probs
  Scenario: trace_probs_cum_deaths_2
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.6280014380485361  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @trace_probs_cum_deaths_3
  @trace_probs
  Scenario: trace_probs_cum_deaths_3
    Given we run the model with trace_probs=0.27025117739698024
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
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @trace_probs_cum_deaths_4
  @trace_probs
  Scenario: trace_probs_cum_deaths_4
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.6280014380485361  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @trace_probs_cum_deaths_5
  @trace_probs
  Scenario: trace_probs_cum_deaths_5
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.27025117739698024
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 15                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @trace_probs_cum_deaths_6
  @trace_probs
  Scenario: trace_probs_cum_deaths_6
    Given we run the model with trace_probs=0.09610948155767196
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
    | asymp_quar_prob | 0.5362647235083882  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @trace_probs_cum_deaths_7
  @trace_probs
  Scenario: trace_probs_cum_deaths_7
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
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @trace_probs_cum_deaths_8
  @trace_probs
  Scenario: trace_probs_cum_deaths_8
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @trace_probs_cum_deaths_9
  @trace_probs
  Scenario: trace_probs_cum_deaths_9
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @trace_probs_cum_deaths_10
  @trace_probs
  Scenario: trace_probs_cum_deaths_10
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @trace_probs_cum_deaths_11
  @trace_probs
  Scenario: trace_probs_cum_deaths_11
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.27025117739698024
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @trace_probs_cum_deaths_12
  @trace_probs
  Scenario: trace_probs_cum_deaths_12
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @trace_probs_cum_deaths_13
  @trace_probs
  Scenario: trace_probs_cum_deaths_13
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @trace_probs_cum_deaths_14
  @trace_probs
  Scenario: trace_probs_cum_deaths_14
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.27025117739698024
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.5362647235083882  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @trace_probs_cum_deaths_15
  @trace_probs
  Scenario: trace_probs_cum_deaths_15
    Given we run the model with trace_probs=0.27025117739698024
    When we run the model with trace_probs=0.4179307148516287
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @trace_probs_cum_deaths_16
  @trace_probs
  Scenario: trace_probs_cum_deaths_16
    Given we run the model with trace_probs=0.09610948155767196
    When we run the model with trace_probs=0.27025117739698024
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.6280014380485361  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @trace_probs_cum_deaths_17
  @trace_probs
  Scenario: trace_probs_cum_deaths_17
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @trace_probs_cum_deaths_18
  @trace_probs
  Scenario: trace_probs_cum_deaths_18
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @trace_probs_cum_deaths_19
  @trace_probs
  Scenario: trace_probs_cum_deaths_19
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @trace_probs_cum_deaths_20
  @trace_probs
  Scenario: trace_probs_cum_deaths_20
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @trace_probs_cum_deaths_21
  @trace_probs
  Scenario: trace_probs_cum_deaths_21
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @trace_probs_cum_deaths_22
  @trace_probs
  Scenario: trace_probs_cum_deaths_22
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value              |
    | n_days          | 66                 |
    | quar_period     | 11                 |
    | pop_size        | 10000              |
    | pop_infected    | 295                |
    | symp_prob       | 0.3946267859089032 |
    | asymp_prob      | 0.5320606162934023 |
    | symp_quar_prob  | 0.0456075960115124 |
    | asymp_quar_prob | 0.6280014380485361 |
    | household_size  | 5.916              |
    Then the cum_deaths should remain the same

  @trace_probs_cum_deaths_23
  @trace_probs
  Scenario: trace_probs_cum_deaths_23
    Given we run the model with trace_probs=0.4179307148516287
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
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @trace_probs_cum_deaths_24
  @trace_probs
  Scenario: trace_probs_cum_deaths_24
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @trace_probs_cum_deaths_25
  @trace_probs
  Scenario: trace_probs_cum_deaths_25
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @trace_probs_cum_deaths_26
  @trace_probs
  Scenario: trace_probs_cum_deaths_26
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @trace_probs_cum_deaths_27
  @trace_probs
  Scenario: trace_probs_cum_deaths_27
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
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @trace_probs_cum_deaths_28
  @trace_probs
  Scenario: trace_probs_cum_deaths_28
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @trace_probs_cum_deaths_29
  @trace_probs
  Scenario: trace_probs_cum_deaths_29
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @trace_probs_cum_deaths_30
  @trace_probs
  Scenario: trace_probs_cum_deaths_30
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
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @trace_probs_cum_deaths_31
  @trace_probs
  Scenario: trace_probs_cum_deaths_31
    Given we run the model with trace_probs=0.4179307148516287
    When we run the model with trace_probs=0.7734426077281416
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @n_days_cum_quarantined_0
  @n_days
  Scenario: n_days_cum_quarantined_0
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
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @n_days_cum_quarantined_1
  @n_days
  Scenario: n_days_cum_quarantined_1
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 13                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @n_days_cum_quarantined_2
  @n_days
  Scenario: n_days_cum_quarantined_2
    Given we run the model with n_days=66
    When we run the model with n_days=80
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @n_days_cum_quarantined_3
  @n_days
  Scenario: n_days_cum_quarantined_3
    Given we run the model with n_days=66
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @n_days_cum_quarantined_4
  @n_days
  Scenario: n_days_cum_quarantined_4
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @n_days_cum_quarantined_5
  @n_days
  Scenario: n_days_cum_quarantined_5
    Given we run the model with n_days=80
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @n_days_cum_quarantined_6
  @n_days
  Scenario: n_days_cum_quarantined_6
    Given we run the model with n_days=80
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @n_days_cum_quarantined_7
  @n_days
  Scenario: n_days_cum_quarantined_7
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @n_days_cum_quarantined_8
  @n_days
  Scenario: n_days_cum_quarantined_8
    Given we run the model with n_days=66
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @n_days_cum_quarantined_9
  @n_days
  Scenario: n_days_cum_quarantined_9
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @n_days_cum_quarantined_10
  @n_days
  Scenario: n_days_cum_quarantined_10
    Given we run the model with n_days=80
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @n_days_cum_quarantined_11
  @n_days
  Scenario: n_days_cum_quarantined_11
    Given we run the model with n_days=66
    When we run the model with n_days=80
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @n_days_cum_quarantined_12
  @n_days
  Scenario: n_days_cum_quarantined_12
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @n_days_cum_quarantined_13
  @n_days
  Scenario: n_days_cum_quarantined_13
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @n_days_cum_quarantined_14
  @n_days
  Scenario: n_days_cum_quarantined_14
    Given we run the model with n_days=66
    When we run the model with n_days=80
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 15                  |
    | pop_size        | 17019               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @n_days_cum_quarantined_15
  @n_days
  Scenario: n_days_cum_quarantined_15
    Given we run the model with n_days=80
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @n_days_cum_quarantined_16
  @n_days
  Scenario: n_days_cum_quarantined_16
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @n_days_cum_quarantined_17
  @n_days
  Scenario: n_days_cum_quarantined_17
    Given we run the model with n_days=80
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @n_days_cum_quarantined_18
  @n_days
  Scenario: n_days_cum_quarantined_18
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @n_days_cum_quarantined_19
  @n_days
  Scenario: n_days_cum_quarantined_19
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @n_days_cum_quarantined_20
  @n_days
  Scenario: n_days_cum_quarantined_20
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @n_days_cum_quarantined_21
  @n_days
  Scenario: n_days_cum_quarantined_21
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @n_days_cum_quarantined_22
  @n_days
  Scenario: n_days_cum_quarantined_22
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @n_days_cum_quarantined_23
  @n_days
  Scenario: n_days_cum_quarantined_23
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @n_days_cum_quarantined_24
  @n_days
  Scenario: n_days_cum_quarantined_24
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @n_days_cum_quarantined_25
  @n_days
  Scenario: n_days_cum_quarantined_25
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @n_days_cum_quarantined_26
  @n_days
  Scenario: n_days_cum_quarantined_26
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @n_days_cum_quarantined_27
  @n_days
  Scenario: n_days_cum_quarantined_27
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
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @n_days_cum_quarantined_28
  @n_days
  Scenario: n_days_cum_quarantined_28
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @n_days_cum_quarantined_29
  @n_days
  Scenario: n_days_cum_quarantined_29
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @n_days_cum_quarantined_30
  @n_days
  Scenario: n_days_cum_quarantined_30
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @n_days_cum_infections_0
  @n_days
  Scenario: n_days_cum_infections_0
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
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @n_days_cum_infections_1
  @n_days
  Scenario: n_days_cum_infections_1
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @n_days_cum_infections_2
  @n_days
  Scenario: n_days_cum_infections_2
    Given we run the model with n_days=66
    When we run the model with n_days=80
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
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @n_days_cum_infections_3
  @n_days
  Scenario: n_days_cum_infections_3
    Given we run the model with n_days=66
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @n_days_cum_infections_4
  @n_days
  Scenario: n_days_cum_infections_4
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @n_days_cum_infections_5
  @n_days
  Scenario: n_days_cum_infections_5
    Given we run the model with n_days=80
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @n_days_cum_infections_6
  @n_days
  Scenario: n_days_cum_infections_6
    Given we run the model with n_days=80
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @n_days_cum_infections_7
  @n_days
  Scenario: n_days_cum_infections_7
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @n_days_cum_infections_8
  @n_days
  Scenario: n_days_cum_infections_8
    Given we run the model with n_days=66
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @n_days_cum_infections_9
  @n_days
  Scenario: n_days_cum_infections_9
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @n_days_cum_infections_10
  @n_days
  Scenario: n_days_cum_infections_10
    Given we run the model with n_days=80
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @n_days_cum_infections_11
  @n_days
  Scenario: n_days_cum_infections_11
    Given we run the model with n_days=66
    When we run the model with n_days=80
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @n_days_cum_infections_12
  @n_days
  Scenario: n_days_cum_infections_12
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @n_days_cum_infections_13
  @n_days
  Scenario: n_days_cum_infections_13
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @n_days_cum_infections_14
  @n_days
  Scenario: n_days_cum_infections_14
    Given we run the model with n_days=66
    When we run the model with n_days=80
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 15                  |
    | pop_size        | 17019               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @n_days_cum_infections_15
  @n_days
  Scenario: n_days_cum_infections_15
    Given we run the model with n_days=80
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @n_days_cum_infections_16
  @n_days
  Scenario: n_days_cum_infections_16
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @n_days_cum_infections_17
  @n_days
  Scenario: n_days_cum_infections_17
    Given we run the model with n_days=80
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @n_days_cum_infections_18
  @n_days
  Scenario: n_days_cum_infections_18
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 15                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @n_days_cum_infections_19
  @n_days
  Scenario: n_days_cum_infections_19
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @n_days_cum_infections_20
  @n_days
  Scenario: n_days_cum_infections_20
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @n_days_cum_infections_21
  @n_days
  Scenario: n_days_cum_infections_21
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @n_days_cum_infections_22
  @n_days
  Scenario: n_days_cum_infections_22
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @n_days_cum_infections_23
  @n_days
  Scenario: n_days_cum_infections_23
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
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @n_days_cum_infections_24
  @n_days
  Scenario: n_days_cum_infections_24
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @n_days_cum_infections_25
  @n_days
  Scenario: n_days_cum_infections_25
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @n_days_cum_infections_26
  @n_days
  Scenario: n_days_cum_infections_26
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @n_days_cum_infections_27
  @n_days
  Scenario: n_days_cum_infections_27
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
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @n_days_cum_infections_28
  @n_days
  Scenario: n_days_cum_infections_28
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @n_days_cum_infections_29
  @n_days
  Scenario: n_days_cum_infections_29
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @n_days_cum_infections_30
  @n_days
  Scenario: n_days_cum_infections_30
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @n_days_cum_deaths_0
  @n_days
  Scenario: n_days_cum_deaths_0
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
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @n_days_cum_deaths_1
  @n_days
  Scenario: n_days_cum_deaths_1
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @n_days_cum_deaths_2
  @n_days
  Scenario: n_days_cum_deaths_2
    Given we run the model with n_days=66
    When we run the model with n_days=80
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
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @n_days_cum_deaths_3
  @n_days
  Scenario: n_days_cum_deaths_3
    Given we run the model with n_days=66
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @n_days_cum_deaths_4
  @n_days
  Scenario: n_days_cum_deaths_4
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @n_days_cum_deaths_5
  @n_days
  Scenario: n_days_cum_deaths_5
    Given we run the model with n_days=80
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @n_days_cum_deaths_6
  @n_days
  Scenario: n_days_cum_deaths_6
    Given we run the model with n_days=80
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @n_days_cum_deaths_7
  @n_days
  Scenario: n_days_cum_deaths_7
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @n_days_cum_deaths_8
  @n_days
  Scenario: n_days_cum_deaths_8
    Given we run the model with n_days=66
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @n_days_cum_deaths_9
  @n_days
  Scenario: n_days_cum_deaths_9
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @n_days_cum_deaths_10
  @n_days
  Scenario: n_days_cum_deaths_10
    Given we run the model with n_days=80
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @n_days_cum_deaths_11
  @n_days
  Scenario: n_days_cum_deaths_11
    Given we run the model with n_days=66
    When we run the model with n_days=80
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @n_days_cum_deaths_12
  @n_days
  Scenario: n_days_cum_deaths_12
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @n_days_cum_deaths_13
  @n_days
  Scenario: n_days_cum_deaths_13
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @n_days_cum_deaths_14
  @n_days
  Scenario: n_days_cum_deaths_14
    Given we run the model with n_days=66
    When we run the model with n_days=80
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 15                  |
    | pop_size        | 17019               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @n_days_cum_deaths_15
  @n_days
  Scenario: n_days_cum_deaths_15
    Given we run the model with n_days=80
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @n_days_cum_deaths_16
  @n_days
  Scenario: n_days_cum_deaths_16
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @n_days_cum_deaths_17
  @n_days
  Scenario: n_days_cum_deaths_17
    Given we run the model with n_days=80
    When we run the model with n_days=90
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @n_days_cum_deaths_18
  @n_days
  Scenario: n_days_cum_deaths_18
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @n_days_cum_deaths_19
  @n_days
  Scenario: n_days_cum_deaths_19
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 13                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @n_days_cum_deaths_20
  @n_days
  Scenario: n_days_cum_deaths_20
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @n_days_cum_deaths_21
  @n_days
  Scenario: n_days_cum_deaths_21
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @n_days_cum_deaths_22
  @n_days
  Scenario: n_days_cum_deaths_22
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 15                  |
    | pop_size        | 13013               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @n_days_cum_deaths_23
  @n_days
  Scenario: n_days_cum_deaths_23
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @n_days_cum_deaths_24
  @n_days
  Scenario: n_days_cum_deaths_24
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @n_days_cum_deaths_25
  @n_days
  Scenario: n_days_cum_deaths_25
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @n_days_cum_deaths_26
  @n_days
  Scenario: n_days_cum_deaths_26
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @n_days_cum_deaths_27
  @n_days
  Scenario: n_days_cum_deaths_27
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
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @n_days_cum_deaths_28
  @n_days
  Scenario: n_days_cum_deaths_28
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @n_days_cum_deaths_29
  @n_days
  Scenario: n_days_cum_deaths_29
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @n_days_cum_deaths_30
  @n_days
  Scenario: n_days_cum_deaths_30
    Given we run the model with n_days=90
    When we run the model with n_days=96
    And effect modifier values
    | modifier        | value               |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @pop_size_cum_quarantined_0
  @pop_size
  Scenario: pop_size_cum_quarantined_0
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
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_size_cum_quarantined_1
  @pop_size
  Scenario: pop_size_cum_quarantined_1
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_size_cum_quarantined_2
  @pop_size
  Scenario: pop_size_cum_quarantined_2
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_size_cum_quarantined_3
  @pop_size
  Scenario: pop_size_cum_quarantined_3
    Given we run the model with pop_size=11593
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_size_cum_quarantined_4
  @pop_size
  Scenario: pop_size_cum_quarantined_4
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 15                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_size_cum_quarantined_5
  @pop_size
  Scenario: pop_size_cum_quarantined_5
    Given we run the model with pop_size=10000
    When we run the model with pop_size=11593
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_size_cum_quarantined_6
  @pop_size
  Scenario: pop_size_cum_quarantined_6
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
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
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_size_cum_quarantined_7
  @pop_size
  Scenario: pop_size_cum_quarantined_7
    Given we run the model with pop_size=10000
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_size_cum_quarantined_8
  @pop_size
  Scenario: pop_size_cum_quarantined_8
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_size_cum_quarantined_9
  @pop_size
  Scenario: pop_size_cum_quarantined_9
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_size_cum_quarantined_10
  @pop_size
  Scenario: pop_size_cum_quarantined_10
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_size_cum_quarantined_11
  @pop_size
  Scenario: pop_size_cum_quarantined_11
    Given we run the model with pop_size=10000
    When we run the model with pop_size=11593
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 13                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_size_cum_quarantined_12
  @pop_size
  Scenario: pop_size_cum_quarantined_12
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_size_cum_quarantined_13
  @pop_size
  Scenario: pop_size_cum_quarantined_13
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_size_cum_quarantined_14
  @pop_size
  Scenario: pop_size_cum_quarantined_14
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_size_cum_quarantined_15
  @pop_size
  Scenario: pop_size_cum_quarantined_15
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_size_cum_quarantined_16
  @pop_size
  Scenario: pop_size_cum_quarantined_16
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_size_cum_quarantined_17
  @pop_size
  Scenario: pop_size_cum_quarantined_17
    Given we run the model with pop_size=10000
    When we run the model with pop_size=11593
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_size_cum_quarantined_18
  @pop_size
  Scenario: pop_size_cum_quarantined_18
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 13                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_size_cum_quarantined_19
  @pop_size
  Scenario: pop_size_cum_quarantined_19
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_size_cum_quarantined_20
  @pop_size
  Scenario: pop_size_cum_quarantined_20
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_size_cum_quarantined_21
  @pop_size
  Scenario: pop_size_cum_quarantined_21
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 15                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_size_cum_quarantined_22
  @pop_size
  Scenario: pop_size_cum_quarantined_22
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_size_cum_quarantined_23
  @pop_size
  Scenario: pop_size_cum_quarantined_23
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_size_cum_quarantined_24
  @pop_size
  Scenario: pop_size_cum_quarantined_24
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_size_cum_quarantined_25
  @pop_size
  Scenario: pop_size_cum_quarantined_25
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_size_cum_quarantined_26
  @pop_size
  Scenario: pop_size_cum_quarantined_26
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_size_cum_quarantined_27
  @pop_size
  Scenario: pop_size_cum_quarantined_27
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_size_cum_quarantined_28
  @pop_size
  Scenario: pop_size_cum_quarantined_28
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_size_cum_quarantined_29
  @pop_size
  Scenario: pop_size_cum_quarantined_29
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_size_cum_quarantined_30
  @pop_size
  Scenario: pop_size_cum_quarantined_30
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_size_cum_infections_0
  @pop_size
  Scenario: pop_size_cum_infections_0
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
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_size_cum_infections_1
  @pop_size
  Scenario: pop_size_cum_infections_1
    Given we run the model with pop_size=13013
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
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_size_cum_infections_2
  @pop_size
  Scenario: pop_size_cum_infections_2
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_size_cum_infections_3
  @pop_size
  Scenario: pop_size_cum_infections_3
    Given we run the model with pop_size=11593
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_size_cum_infections_4
  @pop_size
  Scenario: pop_size_cum_infections_4
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_size_cum_infections_5
  @pop_size
  Scenario: pop_size_cum_infections_5
    Given we run the model with pop_size=10000
    When we run the model with pop_size=11593
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_size_cum_infections_6
  @pop_size
  Scenario: pop_size_cum_infections_6
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
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
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_size_cum_infections_7
  @pop_size
  Scenario: pop_size_cum_infections_7
    Given we run the model with pop_size=10000
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_size_cum_infections_8
  @pop_size
  Scenario: pop_size_cum_infections_8
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
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
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_size_cum_infections_9
  @pop_size
  Scenario: pop_size_cum_infections_9
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_size_cum_infections_10
  @pop_size
  Scenario: pop_size_cum_infections_10
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_size_cum_infections_11
  @pop_size
  Scenario: pop_size_cum_infections_11
    Given we run the model with pop_size=10000
    When we run the model with pop_size=11593
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_size_cum_infections_12
  @pop_size
  Scenario: pop_size_cum_infections_12
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_size_cum_infections_13
  @pop_size
  Scenario: pop_size_cum_infections_13
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_size_cum_infections_14
  @pop_size
  Scenario: pop_size_cum_infections_14
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_size_cum_infections_15
  @pop_size
  Scenario: pop_size_cum_infections_15
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_size_cum_infections_16
  @pop_size
  Scenario: pop_size_cum_infections_16
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_size_cum_infections_17
  @pop_size
  Scenario: pop_size_cum_infections_17
    Given we run the model with pop_size=10000
    When we run the model with pop_size=11593
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_size_cum_infections_18
  @pop_size
  Scenario: pop_size_cum_infections_18
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 13                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_size_cum_infections_19
  @pop_size
  Scenario: pop_size_cum_infections_19
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_size_cum_infections_20
  @pop_size
  Scenario: pop_size_cum_infections_20
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_size_cum_infections_21
  @pop_size
  Scenario: pop_size_cum_infections_21
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 15                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_size_cum_infections_22
  @pop_size
  Scenario: pop_size_cum_infections_22
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_size_cum_infections_23
  @pop_size
  Scenario: pop_size_cum_infections_23
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_size_cum_infections_24
  @pop_size
  Scenario: pop_size_cum_infections_24
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_size_cum_infections_25
  @pop_size
  Scenario: pop_size_cum_infections_25
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_size_cum_infections_26
  @pop_size
  Scenario: pop_size_cum_infections_26
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_size_cum_infections_27
  @pop_size
  Scenario: pop_size_cum_infections_27
    Given we run the model with pop_size=13013
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
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_size_cum_infections_28
  @pop_size
  Scenario: pop_size_cum_infections_28
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_size_cum_infections_29
  @pop_size
  Scenario: pop_size_cum_infections_29
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_size_cum_infections_30
  @pop_size
  Scenario: pop_size_cum_infections_30
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_size_cum_deaths_0
  @pop_size
  Scenario: pop_size_cum_deaths_0
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
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @pop_size_cum_deaths_1
  @pop_size
  Scenario: pop_size_cum_deaths_1
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @pop_size_cum_deaths_2
  @pop_size
  Scenario: pop_size_cum_deaths_2
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @pop_size_cum_deaths_3
  @pop_size
  Scenario: pop_size_cum_deaths_3
    Given we run the model with pop_size=11593
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @pop_size_cum_deaths_4
  @pop_size
  Scenario: pop_size_cum_deaths_4
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 15                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @pop_size_cum_deaths_5
  @pop_size
  Scenario: pop_size_cum_deaths_5
    Given we run the model with pop_size=10000
    When we run the model with pop_size=11593
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @pop_size_cum_deaths_6
  @pop_size
  Scenario: pop_size_cum_deaths_6
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
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
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @pop_size_cum_deaths_7
  @pop_size
  Scenario: pop_size_cum_deaths_7
    Given we run the model with pop_size=10000
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @pop_size_cum_deaths_8
  @pop_size
  Scenario: pop_size_cum_deaths_8
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
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
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @pop_size_cum_deaths_9
  @pop_size
  Scenario: pop_size_cum_deaths_9
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @pop_size_cum_deaths_10
  @pop_size
  Scenario: pop_size_cum_deaths_10
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
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @pop_size_cum_deaths_11
  @pop_size
  Scenario: pop_size_cum_deaths_11
    Given we run the model with pop_size=10000
    When we run the model with pop_size=11593
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @pop_size_cum_deaths_12
  @pop_size
  Scenario: pop_size_cum_deaths_12
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @pop_size_cum_deaths_13
  @pop_size
  Scenario: pop_size_cum_deaths_13
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 13                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @pop_size_cum_deaths_14
  @pop_size
  Scenario: pop_size_cum_deaths_14
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @pop_size_cum_deaths_15
  @pop_size
  Scenario: pop_size_cum_deaths_15
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @pop_size_cum_deaths_16
  @pop_size
  Scenario: pop_size_cum_deaths_16
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @pop_size_cum_deaths_17
  @pop_size
  Scenario: pop_size_cum_deaths_17
    Given we run the model with pop_size=10000
    When we run the model with pop_size=11593
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @pop_size_cum_deaths_18
  @pop_size
  Scenario: pop_size_cum_deaths_18
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 13                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @pop_size_cum_deaths_19
  @pop_size
  Scenario: pop_size_cum_deaths_19
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @pop_size_cum_deaths_20
  @pop_size
  Scenario: pop_size_cum_deaths_20
    Given we run the model with pop_size=11593
    When we run the model with pop_size=13013
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @pop_size_cum_deaths_21
  @pop_size
  Scenario: pop_size_cum_deaths_21
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 15                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @pop_size_cum_deaths_22
  @pop_size
  Scenario: pop_size_cum_deaths_22
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @pop_size_cum_deaths_23
  @pop_size
  Scenario: pop_size_cum_deaths_23
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_infected    | 140                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @pop_size_cum_deaths_24
  @pop_size
  Scenario: pop_size_cum_deaths_24
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @pop_size_cum_deaths_25
  @pop_size
  Scenario: pop_size_cum_deaths_25
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @pop_size_cum_deaths_26
  @pop_size
  Scenario: pop_size_cum_deaths_26
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
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @pop_size_cum_deaths_27
  @pop_size
  Scenario: pop_size_cum_deaths_27
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 217                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @pop_size_cum_deaths_28
  @pop_size
  Scenario: pop_size_cum_deaths_28
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @pop_size_cum_deaths_29
  @pop_size
  Scenario: pop_size_cum_deaths_29
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_infected    | 295                 |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @pop_size_cum_deaths_30
  @pop_size
  Scenario: pop_size_cum_deaths_30
    Given we run the model with pop_size=13013
    When we run the model with pop_size=17019
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_infected    | 400                 |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_deaths should increase

  @pop_infected_cum_quarantined_0
  @pop_infected
  Scenario: pop_infected_cum_quarantined_0
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
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_infected_cum_quarantined_1
  @pop_infected
  Scenario: pop_infected_cum_quarantined_1
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 17019               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_infected_cum_quarantined_2
  @pop_infected
  Scenario: pop_infected_cum_quarantined_2
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_infected_cum_quarantined_3
  @pop_infected
  Scenario: pop_infected_cum_quarantined_3
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_infected_cum_quarantined_4
  @pop_infected
  Scenario: pop_infected_cum_quarantined_4
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_infected_cum_quarantined_5
  @pop_infected
  Scenario: pop_infected_cum_quarantined_5
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=217
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
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_infected_cum_quarantined_6
  @pop_infected
  Scenario: pop_infected_cum_quarantined_6
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
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
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_infected_cum_quarantined_7
  @pop_infected
  Scenario: pop_infected_cum_quarantined_7
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_infected_cum_quarantined_8
  @pop_infected
  Scenario: pop_infected_cum_quarantined_8
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_infected_cum_quarantined_9
  @pop_infected
  Scenario: pop_infected_cum_quarantined_9
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_infected_cum_quarantined_10
  @pop_infected
  Scenario: pop_infected_cum_quarantined_10
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_infected_cum_quarantined_11
  @pop_infected
  Scenario: pop_infected_cum_quarantined_11
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=217
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_infected_cum_quarantined_12
  @pop_infected
  Scenario: pop_infected_cum_quarantined_12
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_infected_cum_quarantined_13
  @pop_infected
  Scenario: pop_infected_cum_quarantined_13
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_infected_cum_quarantined_14
  @pop_infected
  Scenario: pop_infected_cum_quarantined_14
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_infected_cum_quarantined_15
  @pop_infected
  Scenario: pop_infected_cum_quarantined_15
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_infected_cum_quarantined_16
  @pop_infected
  Scenario: pop_infected_cum_quarantined_16
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 17019               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_infected_cum_quarantined_17
  @pop_infected
  Scenario: pop_infected_cum_quarantined_17
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=217
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_infected_cum_quarantined_18
  @pop_infected
  Scenario: pop_infected_cum_quarantined_18
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_infected_cum_quarantined_19
  @pop_infected
  Scenario: pop_infected_cum_quarantined_19
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_infected_cum_quarantined_20
  @pop_infected
  Scenario: pop_infected_cum_quarantined_20
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_infected_cum_quarantined_21
  @pop_infected
  Scenario: pop_infected_cum_quarantined_21
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
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_infected_cum_quarantined_22
  @pop_infected
  Scenario: pop_infected_cum_quarantined_22
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_infected_cum_quarantined_23
  @pop_infected
  Scenario: pop_infected_cum_quarantined_23
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_infected_cum_quarantined_24
  @pop_infected
  Scenario: pop_infected_cum_quarantined_24
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_infected_cum_quarantined_25
  @pop_infected
  Scenario: pop_infected_cum_quarantined_25
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_infected_cum_quarantined_26
  @pop_infected
  Scenario: pop_infected_cum_quarantined_26
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 17019               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_infected_cum_quarantined_27
  @pop_infected
  Scenario: pop_infected_cum_quarantined_27
    Given we run the model with pop_infected=295
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
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_infected_cum_quarantined_28
  @pop_infected
  Scenario: pop_infected_cum_quarantined_28
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 13013               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_infected_cum_quarantined_29
  @pop_infected
  Scenario: pop_infected_cum_quarantined_29
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 13013               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_infected_cum_quarantined_30
  @pop_infected
  Scenario: pop_infected_cum_quarantined_30
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_quarantined should increase

  @pop_infected_cum_infections_0
  @pop_infected
  Scenario: pop_infected_cum_infections_0
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
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_infected_cum_infections_1
  @pop_infected
  Scenario: pop_infected_cum_infections_1
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 17019               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_infected_cum_infections_2
  @pop_infected
  Scenario: pop_infected_cum_infections_2
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_infected_cum_infections_3
  @pop_infected
  Scenario: pop_infected_cum_infections_3
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_infected_cum_infections_4
  @pop_infected
  Scenario: pop_infected_cum_infections_4
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_infected_cum_infections_5
  @pop_infected
  Scenario: pop_infected_cum_infections_5
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=217
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_infected_cum_infections_6
  @pop_infected
  Scenario: pop_infected_cum_infections_6
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
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
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_infected_cum_infections_7
  @pop_infected
  Scenario: pop_infected_cum_infections_7
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_infected_cum_infections_8
  @pop_infected
  Scenario: pop_infected_cum_infections_8
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 17019               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_infected_cum_infections_9
  @pop_infected
  Scenario: pop_infected_cum_infections_9
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_infected_cum_infections_10
  @pop_infected
  Scenario: pop_infected_cum_infections_10
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_infected_cum_infections_11
  @pop_infected
  Scenario: pop_infected_cum_infections_11
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=217
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_infected_cum_infections_12
  @pop_infected
  Scenario: pop_infected_cum_infections_12
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_infected_cum_infections_13
  @pop_infected
  Scenario: pop_infected_cum_infections_13
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 13                  |
    | pop_size        | 13013               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_infected_cum_infections_14
  @pop_infected
  Scenario: pop_infected_cum_infections_14
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_infected_cum_infections_15
  @pop_infected
  Scenario: pop_infected_cum_infections_15
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_infected_cum_infections_16
  @pop_infected
  Scenario: pop_infected_cum_infections_16
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_infected_cum_infections_17
  @pop_infected
  Scenario: pop_infected_cum_infections_17
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=217
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_infected_cum_infections_18
  @pop_infected
  Scenario: pop_infected_cum_infections_18
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_infected_cum_infections_19
  @pop_infected
  Scenario: pop_infected_cum_infections_19
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_infected_cum_infections_20
  @pop_infected
  Scenario: pop_infected_cum_infections_20
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 13013               |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_infected_cum_infections_21
  @pop_infected
  Scenario: pop_infected_cum_infections_21
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_infected_cum_infections_22
  @pop_infected
  Scenario: pop_infected_cum_infections_22
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_infected_cum_infections_23
  @pop_infected
  Scenario: pop_infected_cum_infections_23
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_infected_cum_infections_24
  @pop_infected
  Scenario: pop_infected_cum_infections_24
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_infected_cum_infections_25
  @pop_infected
  Scenario: pop_infected_cum_infections_25
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_infected_cum_infections_26
  @pop_infected
  Scenario: pop_infected_cum_infections_26
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 17019               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_infected_cum_infections_27
  @pop_infected
  Scenario: pop_infected_cum_infections_27
    Given we run the model with pop_infected=295
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
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_infected_cum_infections_28
  @pop_infected
  Scenario: pop_infected_cum_infections_28
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 13013               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_infected_cum_infections_29
  @pop_infected
  Scenario: pop_infected_cum_infections_29
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_infected_cum_infections_30
  @pop_infected
  Scenario: pop_infected_cum_infections_30
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_infections should increase

  @pop_infected_cum_deaths_0
  @pop_infected
  Scenario: pop_infected_cum_deaths_0
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
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @pop_infected_cum_deaths_1
  @pop_infected
  Scenario: pop_infected_cum_deaths_1
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 17019               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @pop_infected_cum_deaths_2
  @pop_infected
  Scenario: pop_infected_cum_deaths_2
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @pop_infected_cum_deaths_3
  @pop_infected
  Scenario: pop_infected_cum_deaths_3
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.7292420114738518  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @pop_infected_cum_deaths_4
  @pop_infected
  Scenario: pop_infected_cum_deaths_4
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @pop_infected_cum_deaths_5
  @pop_infected
  Scenario: pop_infected_cum_deaths_5
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=217
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @pop_infected_cum_deaths_6
  @pop_infected
  Scenario: pop_infected_cum_deaths_6
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
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
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @pop_infected_cum_deaths_7
  @pop_infected
  Scenario: pop_infected_cum_deaths_7
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @pop_infected_cum_deaths_8
  @pop_infected
  Scenario: pop_infected_cum_deaths_8
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 17019               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @pop_infected_cum_deaths_9
  @pop_infected
  Scenario: pop_infected_cum_deaths_9
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @pop_infected_cum_deaths_10
  @pop_infected
  Scenario: pop_infected_cum_deaths_10
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @pop_infected_cum_deaths_11
  @pop_infected
  Scenario: pop_infected_cum_deaths_11
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=217
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.2404924383007006  |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @pop_infected_cum_deaths_12
  @pop_infected
  Scenario: pop_infected_cum_deaths_12
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 17019               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @pop_infected_cum_deaths_13
  @pop_infected
  Scenario: pop_infected_cum_deaths_13
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 13                  |
    | pop_size        | 13013               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @pop_infected_cum_deaths_14
  @pop_infected
  Scenario: pop_infected_cum_deaths_14
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @pop_infected_cum_deaths_15
  @pop_infected
  Scenario: pop_infected_cum_deaths_15
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.5362647235083882  |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @pop_infected_cum_deaths_16
  @pop_infected
  Scenario: pop_infected_cum_deaths_16
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @pop_infected_cum_deaths_17
  @pop_infected
  Scenario: pop_infected_cum_deaths_17
    Given we run the model with pop_infected=140
    When we run the model with pop_infected=217
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @pop_infected_cum_deaths_18
  @pop_infected
  Scenario: pop_infected_cum_deaths_18
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 90                  |
    | quar_period     | 13                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @pop_infected_cum_deaths_19
  @pop_infected
  Scenario: pop_infected_cum_deaths_19
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 96                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @pop_infected_cum_deaths_20
  @pop_infected
  Scenario: pop_infected_cum_deaths_20
    Given we run the model with pop_infected=217
    When we run the model with pop_infected=295
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @pop_infected_cum_deaths_21
  @pop_infected
  Scenario: pop_infected_cum_deaths_21
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
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @pop_infected_cum_deaths_22
  @pop_infected
  Scenario: pop_infected_cum_deaths_22
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 11593               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.4179307148516287  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @pop_infected_cum_deaths_23
  @pop_infected
  Scenario: pop_infected_cum_deaths_23
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 15                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @pop_infected_cum_deaths_24
  @pop_infected
  Scenario: pop_infected_cum_deaths_24
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.32012755679683896 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @pop_infected_cum_deaths_25
  @pop_infected
  Scenario: pop_infected_cum_deaths_25
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 66                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | symp_prob       | 0.5299357265511195  |
    | asymp_prob      | 0.06566236367037942 |
    | symp_quar_prob  | 0.14055901473290044 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @pop_infected_cum_deaths_26
  @pop_infected
  Scenario: pop_infected_cum_deaths_26
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 17019               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.5320606162934023  |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.6280014380485361  |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @pop_infected_cum_deaths_27
  @pop_infected
  Scenario: pop_infected_cum_deaths_27
    Given we run the model with pop_infected=295
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
    | trace_probs     | 0.27025117739698024 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @pop_infected_cum_deaths_28
  @pop_infected
  Scenario: pop_infected_cum_deaths_28
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 13013               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.39576785318565705 |
    | symp_quar_prob  | 0.02312927617193368 |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.09610948155767196 |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @pop_infected_cum_deaths_29
  @pop_infected
  Scenario: pop_infected_cum_deaths_29
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 13                  |
    | pop_size        | 13013               |
    | symp_prob       | 0.3946267859089032  |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same

  @pop_infected_cum_deaths_30
  @pop_infected
  Scenario: pop_infected_cum_deaths_30
    Given we run the model with pop_infected=295
    When we run the model with pop_infected=400
    And effect modifier values
    | modifier        | value               |
    | n_days          | 80                  |
    | quar_period     | 11                  |
    | pop_size        | 10000               |
    | symp_prob       | 0.20143639198171964 |
    | asymp_prob      | 0.6240963641577594  |
    | symp_quar_prob  | 0.0456075960115124  |
    | asymp_quar_prob | 0.16550077992524106 |
    | trace_probs     | 0.7734426077281416  |
    | household_size  | 5.916               |
    Then the cum_deaths should remain the same
