Feature: Influenza1918 Abstract
  Background: IO spec
    Given a simulation with parameters
      | parameter        | type  | distribution                  |
      | MortalityProb    | float | scipy.stats.norm(0.01, 0.005) |
      | RecoveryTime     | float | scipy.stats.norm(2.5 , 1.25)  |
      | MortalityTime    | float | scipy.stats.norm(1   , 0.5)   |
      | TransmissionProb | float | scipy.stats.norm(0.1 , 0.05)  |
      | IncubationTime   | float | scipy.stats.norm(3   , 1.5)   |
      | EncounterRate    | float | scipy.stats.norm(4   , 2)     |
      | Infected         | float | scipy.stats.norm(1000, 500)   |
    And the following variables are recorded at the end of the simulation
      | variable        | type  |
      | deceased        | float |
      | recovered       | float |
      | cases           | float |
      | peak            | int   |
      | peak_infectious | float |

      And 0 <= MortalityProb >= 1
      And RecoveryTime > 0
      And MortalityTime > 0
      And 0 <= TransmissionProb >= 1
      And IncubationTime > 0
      And EncounterRate > 0
      And Infected > 0

  @draw_dag
  Scenario: Draw DAG
    Given a connected DAG
    When we prune the following edges
    | s1              | s2 |
    | deceased        | .* |
    | recovered       | .* |
    | cases           | .* |
    | peak            | .* |
    | peak_infectious | .* |
    Then we obtain the causal DAG

  Scenario: P(Mortality) decrease
    When we decrease P(Mortality) by a factor of n
    Then decreases the Deceased by less than *n
    And decreases the Recovered by more than 1/n

  Scenario: P(Mortality) increase
    When we increase P(Mortality) by a factor of n
    Then decreases the Deceased by less than *n
    And decreases the Recovered by more than 1/n

  Scenario: N(Infectious) decrease
    When we decrease N(Infectious) by a factor of n
    # Peak moves to the left and right, but doesn't infect the total much
    Then moves the peak to the right
    And the peak_infectious does not change

  Scenario: N(Infectious) increase
    When we increase N(Infectious) by a factor of n
    # Peak moves to the left and right, but doesn't infect the total much
    Then moves the peak to the left
    And the peak_infectious does not change

  Scenario: T(Die) decrease
    When we decrease T(Die) by a factor of n
    # Doesn't seem to really increase the number of infected much in covasim.
    # Possibly because the infection seriousness is split into strata rather than just "Infected" and "Dead"
    Then decreases the cases
    And decreases the deceased

  Scenario: T(Die) increase
    When we increase T(Die) by a factor of n
    Then increases the people infected
    And increases the deceased

  Scenario: P(Transmission) decrease
    When we decrease P(Transmission) by a factor of n
    Then decreases the people infected
    And decreases the numbers of deceased and recovered

  Scenario: P(Transmission) increase
    When we increase P(Transmission) by a factor of n
    Then increases the people infected,
    And increases the numbers of Deceased and Recovered

  Scenario: T(Incubate) decrease
    When we decrease T(Incubate) by a factor of n
    # Peak is sooner and infectious at peak is much higher
    # Gradient of TotalInfected is steeper
    Then moves the peak to the left
    And increases the peak_infectious

  Scenario: T(Incubate) increase
    When we increase T(Incubate) by a factor of n
    Then moves the peak to the right
    And decreases the peak_infectious

  Scenario: T(Recovery) decrease
    When we decrease T(Recovery) by a factor of n
    Then moves the peak to the right
    And decreases the peak_infectious

  Scenario: T(Recovery) increase
    When we increase T(Recovery) by a factor of n
    Then moves the peak to the left
    And increases the peak_infectious

  Scenario: Rate(Encounter) decrease
    When we decrease Rate(Encounter) by a factor of n
    Then decreases the cases
    And decreases the Deceased

  Scenario: Rate(Encounter) increase
    When we increase Rate(Encounter) by a factor of n
    Then decreases the cases
    And incrases the Deceased
