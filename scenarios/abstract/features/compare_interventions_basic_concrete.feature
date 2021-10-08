Feature: Compare interventions basic concrete
  Scenario: quar_period -- @1.2 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with quar_period=14
    Then the cum_quarantined should decrease

  Scenario: quar_period -- @1.3 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with quar_period=14
    Then the cum_infections should decrease

  Scenario: quar_period -- @1.4 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with quar_period=14
    Then the cum_deaths should remain the same

  Scenario: Finite quar_period returns -- @1.1 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with quar_period=14
    Then the cum_tests should remain about the same

  Scenario: Finite quar_period returns -- @1.2 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with quar_period=14
    Then the cum_quarantined should remain about the same

  Scenario: Finite quar_period returns -- @1.3 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with quar_period=14
    Then the cum_infections should remain about the same

  Scenario: Finite quar_period returns -- @1.4 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with quar_period=14
    Then the cum_deaths should remain about the same

  Scenario: n_days -- @1.1 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with n_days=60
    Then the cum_tests should increase

  Scenario: n_days -- @1.2 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with n_days=60
    Then the cum_quarantined should increase

  Scenario: n_days -- @1.3 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with n_days=60
    Then the cum_infections should increase

  Scenario: n_days -- @1.4 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with n_days=60
    Then the cum_deaths should increase

  Scenario: pop_size -- @1.1 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with pop_size=1000
    Then the cum_tests should increase

  Scenario: pop_size -- @1.2 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with pop_size=1000
    Then the cum_quarantined should increase

  Scenario: pop_size -- @1.3 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with pop_size=1000
    Then the cum_infections should increase

  Scenario: pop_size -- @1.4 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with pop_size=1000
    Then the cum_deaths should increase

  Scenario: pop_infected -- @1.1 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with pop_infected=0
    Then the cum_tests should increase

  Scenario: pop_infected -- @1.2 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with pop_infected=0
    Then the cum_quarantined should increase

  Scenario: pop_infected -- @1.3 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with pop_infected=0
    Then the cum_infections should increase

  Scenario: pop_infected -- @1.4 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with pop_infected=0
    Then the cum_deaths should remain the same

  Scenario: average_age -- @1.1 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with average_age=14
    Then the cum_tests should increase

  Scenario: average_age -- @1.2 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with average_age=14
    Then the cum_quarantined should increase

  Scenario: average_age -- @1.3 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with average_age=14
    Then the cum_infections should increase

  Scenario: average_age -- @1.4 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with average_age=14
    Then the cum_deaths should increase

  Scenario: probs -- @1.1 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with simp_prob=0
    Then the cum_tests should increase

  Scenario: probs -- @1.1 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with simp_prob=0
    Then the cum_quarantined should increase

  Scenario: probs -- @1.1 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with simp_prob=0
    Then the cum_infections should decrease

  Scenario: probs -- @1.1 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with simp_prob=0
    Then the cum_deaths should remain the same

  Scenario: probs -- @1.2 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with asimp_prob=0
    Then the cum_tests should increase

  Scenario: probs -- @1.2 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with asimp_prob=0
    Then the cum_quarantined should increase

  Scenario: probs -- @1.2 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with asimp_prob=0
    Then the cum_infections should decrease

  Scenario: probs -- @1.2 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with asimp_prob=0
    Then the cum_deaths should remain the same

  Scenario: probs -- @1.3 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with simp_quar_prob=0
    Then the cum_tests should increase

  Scenario: probs -- @1.3 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with simp_quar_prob=0
    Then the cum_quarantined should increase

  Scenario: probs -- @1.3 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with simp_quar_prob=0
    Then the cum_infections should decrease

  Scenario: probs -- @1.3 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with simp_quar_prob=0
    Then the cum_deaths should remain the same

  Scenario: probs -- @1.4 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with asimp_quar_prob=0
    Then the cum_tests should increase

  Scenario: probs -- @1.4 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with asimp_quar_prob=0
    Then the cum_quarantined should increase

  Scenario: probs -- @1.4 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with asimp_quar_prob=0
    Then the cum_infections should decrease

  Scenario: probs -- @1.4 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with asimp_quar_prob=0
    Then the cum_deaths should remain the same

  Scenario: probs -- @1.5 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with trace_probs=0
    Then the cum_tests should increase

  Scenario: probs -- @1.5 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with trace_probs=0
    Then the cum_quarantined should increase

  Scenario: probs -- @1.5 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with trace_probs=0
    Then the cum_infections should decrease

  Scenario: probs -- @1.5 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Finite quar_period returns -- @1.1 _0 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period | 14 |
    When we run the model with trace_probs=0
    Then the cum_deaths should remain the same

  Scenario: Finite quar_period returns -- @1.1 
    Given we run the model with the following configuration
    | variable | value |
    | location | "Western Sahara" |
    | Draw DAG_2 | True |
    | Draw DAG_12 | True |
    | trace_probs | 0 |
    | Draw DAG_17 | True |
    | Draw DAG_9 | True |
    | Draw DAG_6 | True |
    | simp_quar_prob | 0 |
    | Draw DAG_20 | True |
    | Draw DAG_4 | True |
    | n_days | 60 |
    | Draw DAG_0 | True |
    | Draw DAG_10 | True |
    | Draw DAG_8 | True |
    | Draw DAG_11 | True |
    | pop_size | 1000 |
    | Draw DAG_7 | True |
    | asimp_quar_prob | 0 |
    | Draw DAG_16 | True |
    | pop_infected | 0 |
    | Draw DAG_15 | True |
    | simp_prob | 0 |
    | asimp_prob | 0 |
    | average_age | 14 |
    | Draw DAG_5 | True |
    | Draw DAG_18 | True |
    | Draw DAG_3 | True |
    | Draw DAG_14 | True |
    | Draw DAG_13 | True |
    | Draw DAG_1 | True |
    | Draw DAG_19 | True |
    | quar_period -- @1.1 _14 | True |
    | quar_period | 0 |
    When we run the model with quar_period=0
    Then the cum_tests should remain about the same

