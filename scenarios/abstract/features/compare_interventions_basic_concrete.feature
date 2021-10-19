Feature: Compare interventions basic concrete
  Background:
    | parameter       | type  | value   |
    | simp_prob       | float | 0.0     |
    | asimp_prob      | float | 0.0     |
    | trace_probs     | float | 0.0     |
    | location        | str   | Algeria |
    | n_days          | int   | 60      |
    | average_age     | int   | 30      |
    | pop_size        | int   | 1000    |
    | simp_quar_prob  | float | 0.0     |
    | asimp_quar_prob | float | 0.0     |
    | pop_infected    | int   | 0       |
    | quar_period     | int   | 14      |

  Scenario: quar_period -- @1.1 
    Given we run the model with quar_period=14
    When we run the model with quar_period=15
    Then the cum_tests should decrease

  Scenario: quar_period -- @1.2 
    Given we run the model with quar_period=14
    When we run the model with quar_period=15
    And location=Afghanistan
    And average_age=22
    Then the cum_quarantined should decrease

  Scenario: quar_period -- @1.3 
    Given we run the model with quar_period=14
    When we run the model with quar_period=15
    And location=Afghanistan
    And average_age=22
    Then the cum_infections should decrease

  Scenario: quar_period -- @1.4 
    Given we run the model with quar_period=14
    When we run the model with quar_period=15
    And location=Afghanistan
    And average_age=22
    Then the cum_deaths should remain the same

  Scenario: Finite quar_period returns -- @1.2 
    Given we run the model with quar_period=14
    When we run the model with quar_period=15
    And location=Afghanistan
    And average_age=22
    Then the cum_quarantined should remain about the same

  Scenario: Finite quar_period returns -- @1.3 
    Given we run the model with quar_period=14
    When we run the model with quar_period=15
    And location=Afghanistan
    And average_age=22
    Then the cum_infections should remain about the same

  Scenario: Finite quar_period returns -- @1.4 
    Given we run the model with quar_period=14
    When we run the model with quar_period=15
    And location=Afghanistan
    And average_age=22
    Then the cum_deaths should remain about the same

  Scenario: n_days -- @1.1 
    Given we run the model with n_days=60
    When we run the model with n_days=61
    And location=Afghanistan
    And average_age=22
    And quar_period=15
    Then the cum_tests should increase

  Scenario: n_days -- @1.2 
    Given we run the model with n_days=60
    When we run the model with n_days=61
    And location=Afghanistan
    And average_age=22
    And quar_period=15
    Then the cum_quarantined should increase

  Scenario: n_days -- @1.3 
    Given we run the model with n_days=60
    When we run the model with n_days=61
    And location=Afghanistan
    And average_age=22
    And quar_period=15
    Then the cum_infections should increase

  Scenario: n_days -- @1.4 
    Given we run the model with n_days=60
    When we run the model with n_days=61
    And location=Afghanistan
    And average_age=22
    And quar_period=15
    Then the cum_deaths should increase

  Scenario: pop_size -- @1.1 
    Given we run the model with pop_size=1000
    When we run the model with pop_size=1001
    And location=Afghanistan
    And average_age=22
    And n_days=61
    And quar_period=15
    Then the cum_tests should increase

  Scenario: pop_size -- @1.2 
    Given we run the model with pop_size=1000
    When we run the model with pop_size=1001
    And location=Afghanistan
    And average_age=22
    And n_days=61
    And quar_period=15
    Then the cum_quarantined should increase

  Scenario: pop_size -- @1.3 
    Given we run the model with pop_size=1000
    When we run the model with pop_size=1001
    And location=Afghanistan
    And average_age=22
    And n_days=61
    And quar_period=15
    Then the cum_infections should increase

  Scenario: pop_size -- @1.4 
    Given we run the model with pop_size=1000
    When we run the model with pop_size=1001
    And location=Afghanistan
    And average_age=22
    And n_days=61
    And quar_period=15
    Then the cum_deaths should increase

  Scenario: pop_infected -- @1.1 
    Given we run the model with pop_infected=0
    When we run the model with pop_infected=1
    And location=Afghanistan
    And average_age=22
    And pop_size=1001
    And n_days=61
    And quar_period=15
    Then the cum_tests should increase

  Scenario: pop_infected -- @1.2 
    Given we run the model with pop_infected=0
    When we run the model with pop_infected=1
    And location=Afghanistan
    And average_age=22
    And pop_size=1001
    And n_days=61
    And quar_period=15
    Then the cum_quarantined should increase

  Scenario: pop_infected -- @1.3 
    Given we run the model with pop_infected=0
    When we run the model with pop_infected=1
    And location=Afghanistan
    And average_age=22
    And pop_size=1001
    And n_days=61
    And quar_period=15
    Then the cum_infections should increase

  Scenario: pop_infected -- @1.4 
    Given we run the model with pop_infected=0
    When we run the model with pop_infected=1
    And location=Afghanistan
    And average_age=22
    And pop_size=1001
    And n_days=61
    And quar_period=15
    Then the cum_deaths should remain the same

  Scenario: average_age -- @1.1 
    Given we run the model with average_age=30
    When we run the model with average_age=38
    And location=Albania
    And pop_size=1001
    And pop_infected=1
    And n_days=61
    And quar_period=15
    Then the cum_tests should increase

  Scenario: average_age -- @1.2 
    Given we run the model with average_age=30
    When we run the model with average_age=38
    And location=Albania
    And pop_size=1001
    And pop_infected=1
    And n_days=61
    And quar_period=15
    Then the cum_quarantined should increase

  Scenario: average_age -- @1.3 
    Given we run the model with average_age=30
    When we run the model with average_age=38
    And location=Albania
    And pop_size=1001
    And pop_infected=1
    And n_days=61
    And quar_period=15
    Then the cum_infections should increase

  Scenario: average_age -- @1.4 
    Given we run the model with average_age=30
    When we run the model with average_age=38
    And location=Albania
    And pop_size=1001
    And pop_infected=1
    And n_days=61
    And quar_period=15
    Then the cum_deaths should increase

  Scenario: probs -- @1.1 
    Given we run the model with simp_prob=0.0
    When we run the model with simp_prob=0.5
    And location=Albania
    And average_age=38
    And pop_size=1001
    And pop_infected=1
    And n_days=61
    And quar_period=15
    Then the cum_tests should increase

  Scenario: probs -- @1.1 
    Given we run the model with simp_prob=0.0
    When we run the model with simp_prob=0.5
    And location=Albania
    And average_age=38
    And pop_size=1001
    And pop_infected=1
    And n_days=61
    And quar_period=15
    Then the cum_quarantined should increase

  Scenario: probs -- @1.1 
    Given we run the model with simp_prob=0.0
    When we run the model with simp_prob=0.5
    And location=Albania
    And average_age=38
    And pop_size=1001
    And pop_infected=1
    And n_days=61
    And quar_period=15
    Then the cum_infections should decrease

  Scenario: probs -- @1.1 
    Given we run the model with simp_prob=0.0
    When we run the model with simp_prob=0.5
    And location=Albania
    And average_age=38
    And pop_size=1001
    And pop_infected=1
    And n_days=61
    And quar_period=15
    Then the cum_deaths should remain the same

  Scenario: probs -- @1.2 
    Given we run the model with asimp_prob=0.0
    When we run the model with asimp_prob=0.5
    And location=Albania
    And average_age=38
    And pop_size=1001
    And pop_infected=1
    And simp_prob=0.5
    And n_days=61
    And quar_period=15
    Then the cum_tests should increase

  Scenario: probs -- @1.2 
    Given we run the model with asimp_prob=0.0
    When we run the model with asimp_prob=0.5
    And location=Albania
    And average_age=38
    And pop_size=1001
    And pop_infected=1
    And simp_prob=0.5
    And n_days=61
    And quar_period=15
    Then the cum_quarantined should increase

  Scenario: probs -- @1.2 
    Given we run the model with asimp_prob=0.0
    When we run the model with asimp_prob=0.5
    And location=Albania
    And average_age=38
    And pop_size=1001
    And pop_infected=1
    And simp_prob=0.5
    And n_days=61
    And quar_period=15
    Then the cum_infections should decrease

  Scenario: probs -- @1.2 
    Given we run the model with asimp_prob=0.0
    When we run the model with asimp_prob=0.5
    And location=Albania
    And average_age=38
    And pop_size=1001
    And pop_infected=1
    And simp_prob=0.5
    And n_days=61
    And quar_period=15
    Then the cum_deaths should remain the same

  Scenario: probs -- @1.3 
    Given we run the model with simp_quar_prob=0.0
    When we run the model with simp_quar_prob=0.5
    And location=Albania
    And average_age=38
    And pop_size=1001
    And pop_infected=1
    And simp_prob=0.5
    And asimp_prob=0.5
    And n_days=61
    And quar_period=15
    Then the cum_tests should increase

  Scenario: probs -- @1.3 
    Given we run the model with simp_quar_prob=0.0
    When we run the model with simp_quar_prob=0.5
    And location=Albania
    And average_age=38
    And pop_size=1001
    And pop_infected=1
    And simp_prob=0.5
    And asimp_prob=0.5
    And n_days=61
    And quar_period=15
    Then the cum_quarantined should increase

  Scenario: probs -- @1.3 
    Given we run the model with simp_quar_prob=0.0
    When we run the model with simp_quar_prob=0.5
    And location=Albania
    And average_age=38
    And pop_size=1001
    And pop_infected=1
    And simp_prob=0.5
    And asimp_prob=0.5
    And n_days=61
    And quar_period=15
    Then the cum_infections should decrease

  Scenario: probs -- @1.3 
    Given we run the model with simp_quar_prob=0.0
    When we run the model with simp_quar_prob=0.5
    And location=Albania
    And average_age=38
    And pop_size=1001
    And pop_infected=1
    And simp_prob=0.5
    And asimp_prob=0.5
    And n_days=61
    And quar_period=15
    Then the cum_deaths should remain the same

  Scenario: probs -- @1.4 
    Given we run the model with asimp_quar_prob=0.0
    When we run the model with asimp_quar_prob=0.5
    And location=Albania
    And average_age=38
    And pop_size=1001
    And simp_quar_prob=0.5
    And pop_infected=1
    And simp_prob=0.5
    And asimp_prob=0.5
    And n_days=61
    And quar_period=15
    Then the cum_tests should increase

  Scenario: probs -- @1.4 
    Given we run the model with asimp_quar_prob=0.0
    When we run the model with asimp_quar_prob=0.5
    And location=Albania
    And average_age=38
    And pop_size=1001
    And simp_quar_prob=0.5
    And pop_infected=1
    And simp_prob=0.5
    And asimp_prob=0.5
    And n_days=61
    And quar_period=15
    Then the cum_quarantined should increase

  Scenario: probs -- @1.4 
    Given we run the model with asimp_quar_prob=0.0
    When we run the model with asimp_quar_prob=0.5
    And location=Albania
    And average_age=38
    And pop_size=1001
    And simp_quar_prob=0.5
    And pop_infected=1
    And simp_prob=0.5
    And asimp_prob=0.5
    And n_days=61
    And quar_period=15
    Then the cum_infections should decrease

  Scenario: probs -- @1.4 
    Given we run the model with asimp_quar_prob=0.0
    When we run the model with asimp_quar_prob=0.5
    And location=Albania
    And average_age=38
    And pop_size=1001
    And simp_quar_prob=0.5
    And pop_infected=1
    And simp_prob=0.5
    And asimp_prob=0.5
    And n_days=61
    And quar_period=15
    Then the cum_deaths should remain the same

  Scenario: probs -- @1.5 
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.5
    And location=Albania
    And average_age=38
    And pop_size=1001
    And simp_quar_prob=0.5
    And asimp_quar_prob=0.5
    And pop_infected=1
    And simp_prob=0.5
    And asimp_prob=0.5
    And n_days=61
    And quar_period=15
    Then the cum_tests should increase

  Scenario: probs -- @1.5 
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.5
    And location=Albania
    And average_age=38
    And pop_size=1001
    And simp_quar_prob=0.5
    And asimp_quar_prob=0.5
    And pop_infected=1
    And simp_prob=0.5
    And asimp_prob=0.5
    And n_days=61
    And quar_period=15
    Then the cum_quarantined should increase

  Scenario: probs -- @1.5 
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.5
    And location=Albania
    And average_age=38
    And pop_size=1001
    And simp_quar_prob=0.5
    And asimp_quar_prob=0.5
    And pop_infected=1
    And simp_prob=0.5
    And asimp_prob=0.5
    And n_days=61
    And quar_period=15
    Then the cum_infections should decrease

  Scenario: probs -- @1.5 
    Given we run the model with trace_probs=0.0
    When we run the model with trace_probs=0.5
    And location=Albania
    And average_age=38
    And pop_size=1001
    And simp_quar_prob=0.5
    And asimp_quar_prob=0.5
    And pop_infected=1
    And simp_prob=0.5
    And asimp_prob=0.5
    And n_days=61
    And quar_period=15
    Then the cum_deaths should remain the same

  Scenario: Finite quar_period returns -- @1.1 
    Given we run the model with quar_period=0
    When we run the model with quar_period=1
    Then the cum_tests should remain about the same
