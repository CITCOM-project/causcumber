Feature: Test and Trace
  Some properties of the testing and tracing interventions.

  # Use this as the "default" control value?
  Background: Baseline
    Given a simulation run with the basic parameters:
      * pop_type=hybrid
      * pop_size=50000
      * pop_infected=100
      * start_day=2020-03-01
      * end_day=2020-06-30
      * location=UK
    And final values for variables:
      * cum_infections
      * cum_reinfections
      * cum_infectious
      * cum_symptomatic
      * cum_severe
      * cum_critical
      * cum_recoveries
      * cum_deaths
      * cum_tests
      * cum_diagnoses
      * cum_known_deaths
      * cum_quarantined
      * cum_vaccinations
      * cum_vaccinated
      * prevalence
      * incidence
      * r_eff
      * doubling_time
      * test_yield
      * rel_test_yield
      * frac_vaccinated
      * pop_nabs
      * pop_protection
      * pop_symp_protection

  Scenario: Standard testing
    Given a testing intervention with parameters:
      * symp_prob=0.2
      * asymp_prob=0.001
      * symp_quar_prob=1
      * asymp_quar_prob=1
    When the simulation is complete
    Then the "cum_deaths" should be "less than" Baseline

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

  Scenario: No testing
    Given a testing intervention with parameters:
      * symp_prob=0
      * asymp_prob=0
      * symp_quar_prob=0
      * asymp_quar_prob=0
    When the simulation is complete
    Then the "cum_deaths" should be "equal to" Baseline

  Scenario: No tracing
    Given a testing intervention with parameters:
      * symp_prob=0.2
      * asymp_prob=0.001
      * symp_quar_prob=1
      * asymp_quar_prob=1
    And a tracing intervention with parameters:
      * trace_probs=dict(h=0, s=0, w=0, c=0)
    When the simulation is complete
    Then the "cum_deaths" should be "equal to" Standard testing

  Scenario: Trace without test
    Given a testing intervention with parameters:
      * symp_prob=0
      * asymp_prob=0
      * symp_quar_prob=0
      * asymp_quar_prob=0
    And a tracing intervention with parameters:
      * trace_probs=dict(h=1, s=0.5, w=0.5, c=0.3)
    When the simulation is complete
    Then the "cum_deaths" should be "equal to" Baseline

  Scenario: Optimal testing
    Given a testing intervention with parameters:
      * symp_prob=1
      * asymp_prob=1
      * symp_quar_prob=1
      * asymp_quar_prob=1
    When the simulation is complete
    Then the "cum_deaths" should be "less than" Standard testing

  Scenario: Optimal tracing
    Given a testing intervention with parameters:
      * symp_prob=0.2
      * asymp_prob=0.001
      * symp_quar_prob=1
      * asymp_quar_prob=1
    And a tracing intervention with parameters:
      * trace_probs=dict(h=1, s=1, w=1, c=1)
    When the simulation is complete
    Then the "cum_deaths" should be "less than" Standard tracing
