Feature: Intervention

  We implement two different interventions in Covasim: Testing and Contact Tracing. The following scenarios
  describe expected effect of the interventions on the cumulative number of infections.

  Background:
    # Does every `Given` have to be followed by "the"? I'd rather it was "Given that..."
    Given the every simulation is executed with at least the following default input parameters:
    * a population of 50,000
    * in the UK
    * with 100 initial infectious people
    * starting on June 1st 2021
    * ending on September 1st 2021
    # Given that every `Then` clause involves the cumulative number of infections, I'm not sure we need this bit...
    And the reports the following outputs:
    * cumulative number of infections

  Scenario: Baseline
    # Under the default input parameters (background), COVID-19 should spread through the population
    # uncontrolled until herd-immunity is reached, at which point the virus should start to die out.
    # This should result in the worst case scenario in terms of cumulative infections.
    Given no interventions are implemented
    When the simulation is complete
    Then the cumulative number of infections should >= 70% of the population

  Scenario Outline: Testing
    # Under realistic parameter configurations, testing should always be better than
    # the baseline at reducing the number of cumulative infections.
    Given a testing intervention with the following parameters:
    * probability of testing a symptomatic individual = <symp_prob>
    * probability of testing an asymptomatic individual = <asymp_prob>
    * probability of testing a symptomatic quarantined individual = <symp_quar_prob>
    * probability of testing an asymptomatic quarantined individual = <asymp_quar_prob>
    When the simulation is complete
    Then the cumulative number of infections should be <relationship> baseline
    Examples:
      | symp_prob | asymp_prob | symp_quar_prob | asymp_quar_prob | relationship |
      | 0.2       | 0.001      | 1.0            | 1.0             | <            |
      | 0.0       | 0.0        | 0.0            | 0.0             | =            |
      | 0.5       | 0.01       | 1.0            | 1.0             | <<<          |

  Scenario Outline: Contact Tracing
    # Contact tracing is always at least as effective as testing. Under realistic parameter
    # configurations, contact tracing should be significantly better at reducing the cumulative
    # number of infections than baseline and testing.
    Given Testing
    And a contact tracing intervention with the following parameters:
    * probability of tracing a contact from the same home <h_prob>
    * probability of tracing a contact from the same workplace <w_prob>
    * probability of tracing a contact from the same school <s_prob>
    * probability of tracing a contact from the community <c_prob>
    When the simulation is complete
    Then the cumulative number of infections should be <relationship> <comparison_sim>
    Examples:
      | h_prob | w_prob | s_prob | c_prob | relationship | comparison_sim |
      | 1.0    | 0.5    | 0.5    | 0.3    | <<<          | baseline       |
      | 1.0    | 0.5    | 0.5    | 0.3    | <<<          | testing_only   |
      | 0.0    | 0.0    | 0.0    | 0.0    | =            | testing_only   |

  Scenario: Contact Tracing But No Testing
    # Contact tracing requires testing to be implemented.
    # Otherwise, contact tracing has no effect on the cumulative number of infections.
    Given Testing is not implemented
    And a contact tracing intervention with the following parameters:
    * any probability of tracing a contact from the same home
    * any probability of tracing a contact from the same workplace
    * any probability of tracing a contact from the same school
    * any probability of tracing a contact from the community
    When the simulation is complete
    Then the cumulative number of infections should be = baseline
