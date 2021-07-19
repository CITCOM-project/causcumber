Feature: Test and Trace
  Some properties of the testing and tracing interventions.

  # We're going to need a way to explicitly specify datatypes and hooks to deserialise values
  # It's annoying, but otherwise covasim tries to parse n_days=84 as a date
  # I suggest a format like "n_days:int = 84" or "n_days = 84:int"
  Background:
    Given a simulation run with the basic parameters:
      * pop_type=hybrid
      * pop_size=50000
      * pop_infected=100
      * n_days=84
      * location=UK
    And for each week "n" in "10" weeks, the following variable values:
  		* cum_infections_w{n}
  		* cum_symptomatic_w{n}
  		* cum_severe_w{n}
  		* cum_critical_w{n}
  		* cum_tests_w{n}
  		* cum_deaths_w{n}
  		* n_exposed_w{n}
  		* n_quarantined_w{n}

  Scenario: Baseline
    Given a simulation run with only the background parameters

  Scenario: Standard testing
    Given a testing intervention with parameters:
      * symp_prob=0.2
      * asymp_prob=0.001
      * symp_quar_prob=1
      * asymp_quar_prob=1
    When the simulation is complete
    Then the "cum_deaths_w10" should be "less than" Baseline

  Scenario: Standard tracing
    Given a testing intervention with parameters:
      * symp_prob=0.2
      * asymp_prob=0.001
      * symp_quar_prob=1
      * asymp_quar_prob=1
    And a tracing intervention with parameters:
      * trace_probs=dict(h=1, s=0.5, w=0.5, c=0.3)
    When the simulation is complete
    Then the "cum_deaths_w10" should be "less than" Standard testing

  Scenario: No testing
    Given a testing intervention with parameters:
      * symp_prob=0
      * asymp_prob=0
      * symp_quar_prob=0
      * asymp_quar_prob=0
    When the simulation is complete
    Then the "cum_deaths_w10" should be "equal to" Baseline

  Scenario: No tracing
    Given a testing intervention with parameters:
      * symp_prob=0.2
      * asymp_prob=0.001
      * symp_quar_prob=1
      * asymp_quar_prob=1
    And a tracing intervention with parameters:
      * trace_probs=dict(h=0, s=0, w=0, c=0)
    When the simulation is complete
    Then the "cum_deaths_w10" should be "equal to" Standard testing

  Scenario: Trace without test
    Given a testing intervention with parameters:
      * symp_prob=0
      * asymp_prob=0
      * symp_quar_prob=0
      * asymp_quar_prob=0
    And a tracing intervention with parameters:
      * trace_probs=dict(h=1, s=0.5, w=0.5, c=0.3)
    When the simulation is complete
    Then the "cum_deaths_w10" should be "equal to" Baseline

  Scenario: Optimal testing
    Given a testing intervention with parameters:
      * symp_prob=1
      * asymp_prob=1
      * symp_quar_prob=1
      * asymp_quar_prob=1
    When the simulation is complete
    Then the "cum_deaths_w10" should be "less than" Standard testing

  Scenario: Optimal tracing
    Given a testing intervention with parameters:
      * symp_prob=0.2
      * asymp_prob=0.001
      * symp_quar_prob=1
      * asymp_quar_prob=1
    And a tracing intervention with parameters:
      * trace_probs=dict(h=1, s=1, w=1, c=1)
    When the simulation is complete
    Then the "cum_deaths_w10" should be "less than" Standard tracing

  Scenario: Subsequent mortality (has confounding)
    Given a control scenario with cum_infections_w7=4000
    When cum_infections_w7=5000
    Then the "cum_deaths_w10" should be "more than" control