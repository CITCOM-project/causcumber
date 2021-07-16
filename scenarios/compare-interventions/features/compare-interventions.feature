Feature: Compare interventions
  Background:
    Given a simulation run with the basic parameters:
      * quar_period=14
      * n_days=84
      * pop_type=hybrid
      * pop_size=50000
      * pop_infected=100
      * location=UK
    And for each week "n" in "12" weeks, the following variable values:
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

  Scenario Outline: Testing
      Given a testing intervention <id> with parameters:
        * symp_prob=<symp_prob>
        * asymp_prob=<asymp_prob>
        * symp_quar_prob=<symp_quar_prob>
        * asymp_quar_prob=<asymp_quar_prob>
      When the simulation is complete
      Then the "cum_deaths" should be <relationship> <id1>
      Examples:
        | id           | symp_prob | asymp_prob | symp_quar_prob | asymp_quar_prob | relationship | id1          |
        | standardTest | 0.2       | 0.001      | 1              | 1               | <            | baseline     |
        | none         | 0         | 0          | 0              | 0               | =            | baseline     |
        | optimal      | 1         | 1          | 1              | 1               | <            | standardTest |

    Scenario Outline: Contact Tracing
      Given a testing intervention <id> with parameters:
        * symp_prob=0.2
        * asymp_prob=0.001
        * symp_quar_prob=1
        * asymp_quar_prob=1
      And a tracing intervention with parameters:
        * trace_probs=dict(h=<h_prob>, w=<w_prob>, s=<s_prob>, c=<c_prob>)
      Then the "cum_deaths" should be <relationship> <id1>

      Examples:
        | id            | h_prob | w_prob | s_prob | c_prob | relationship | id1            |
        | standardTrace | 1      | 0.5    | 0.5    | 0.3    | <            | baseline       |
        | optimalTrace  | 1      | 1      | 1      | 1      | <            | standardTest   |
        | noTrace       | 0      | 0      | 0      | 0      | =            | standardTest   |

  Scenario: Contact Tracing Without Testing
      Given a testing intervention with parameters:
        * symp_prob=0
        * asymp_prob=0
        * symp_quar_prob=0
        * asymp_quar_prob=0
      And a tracing intervention with parameters:
        # These can be any probabilities here
        # We should come up with a way to represent that
        * trace_probs=dict(h=1, s=0.5, w=0.5, c=0.3)
      When the simulation is complete
      Then the "cum_deaths" should be "equal to" Baseline
