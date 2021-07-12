# The exact syntax to specify treatment regimes will require refinement, probably
Feature: Peaks
  In which we try to lay out some more complex temporal scenarios WRT the peak of infection where we might get some confounding.

  # Could we use the background as the control group?
  Background: Baseline
    Given a simulation run with the basic parameters:
      * quar_period=14
      * n_days=84
      * pop_type=hybrid
      * pop_size=50000
      * pop_infected=100
      * location=UK
    And, for each week {n}, the following variable values:
      * new_infections_w{n}
      * cum_infections_w{n}
      * cum_symptomatic_w{n}
      * cum_severe_w{n}
      * cum_critical_w{n}
      * cum_tests_w{n}
      * cum_deaths_w{n}
      * n_exposed_w{n}
      * n_quarantined_w{n}

  Scenario: Constant testing
    Given a testing intervention with parameters:
      * symp_prob=0.2
      * asymp_prob=0.001
      * symp_quar_prob=1
      * asymp_quar_prob=1
    When the simulation is complete
    Then the "cum_deaths_w{12}" should be "less than" Baseline

  # | no intervention | mass testing |
  # Informal causal question: What is the effect of <intervention> on the infection rate?
  # Formal causal question: What is the causal effect of implementing <intervention> at time step t with probabilities ... on the infection rate t' time steps after implementing it in comparison to no intervention?
  # Intervention: <intervention>
  # Outcome: Infection rate decreases
  Scenario Outline: Delayed Testing
    Given a testing intervention with parameters:
      * symp_prob=0.2
      * asymp_prob=0.001
      * symp_quar_prob=1
      * asymp_quar_prob=1
    And we implement this at the start of week 4
    When the simulation is complete
    Then the "cum_deaths_w{12}" should be "less than" Baseline

  Scenario: Standard tracing
    Given a testing intervention with parameters:
      * symp_prob=0.2
      * asymp_prob=0.001
      * symp_quar_prob=1
      * asymp_quar_prob=1
    And a tracing intervention with parameters:
      * trace_probs=dict(h=1, s=0.5, w=0.5, c=0.3)
    When the simulation is complete
    Then the "cum_deaths" should be "less than" Standard testing

  # | test and trace | testing only |
  # Informal causal question: What is the effect of contact tracing breaking down on the infection rate?
  # Formal causal question: What is the effect of stopping contact tracing once the infection rate reaches N new infections per day on the infection rate t time steps after stopping in comparison to 1. if we kept on tracing, and 2. if we never traced at all?
  # Intervention: Stopping contact tracing at time t
  # Outcome: Infection rate becomes exponential
  Scenario: Limited tracing
    Given a testing intervention with parameters:
      * symp_prob=0.2
      * asymp_prob=0.001
      * symp_quar_prob=1
      * asymp_quar_prob=1
    And a tracing intervention with parameters:
      * trace_probs=dict(h=1, s=0.5, w=0.5, c=0.3)
    And, when "new_infections" > 100, the parameters change to
      * trace_probs=dict(h=1, s=0.05, w=0.05, c=0)
    When the simulation is complete
    Then the "cum_deaths" should be "more than" Standard tracing
    And the "cum_deaths" should be "less than" Standard testing

  # | total tracing | limited tracing |
  # Informal causal question: What is the effect of limited contact tracing resources on the infection rate?
  # Formal causal question: What is the effect of having a fixed limit of X tracable contacts per day on the infection rate t time steps into the run of the model in comparison to 1. if we didn't have a fixed limit, and 2. if we never traced at all?
  # Intervention: limiting the number of tracable contacts to X
  # Outcome: Infection rate becomes exponential once we can't trace everyone
  Scenario: Limited tracing
    Given a testing intervention with parameters:
      * symp_prob=0.2
      * asymp_prob=0.001
      * symp_quar_prob=1
      * asymp_quar_prob=1
    And a tracing intervention with parameters:
      * trace_probs=dict(h=1, s=0.5, w=0.5, c=0.3)
    And the maximum number of tracable contacts is 100 per day
    When the number of new infections <= 100
    Then the "cum_deaths" should be "equal to" Standard tracing
    When the number of new infections > 100
    And the "cum_deaths" should be "more than" Standard testing

  # | schools open | schools closed | schools open |
  # Informal causal question: What is the effect of opening/closing schools on the infection rate?
  # Formal causal question: What is the effect of openning/closing schools on the infection rate t time steps after the intervention in comparison to if we didn't close/reopen?
  # Intervention: Closing/reopening schools
  # Outcome: The infection rate should be lower when the schools are closed
  Scenario: Close and reopen the schools
    When we close the schools
    Then the "new_infections" should be "less than" Baseline
    When we reopen the schools
    Then the "new_infections" should should be "equal to" Baseline
