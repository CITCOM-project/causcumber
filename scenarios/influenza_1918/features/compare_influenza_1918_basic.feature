Feature: Compare influenza_1918_basic
  Background: IO spec
    Given a simulation with parameters
      | parameter     | value      | type |
      | MortalityProb  | float  | truncnorm(0.01,0.005,0,1)  |
      | Infected  | float  | truncnorm(1000,100,500,1500)  |
      | MortalityTime  | float  | truncnorm(1,0.5,1,5)  |
      | TransmissionProb  | float  | truncnorm(0.1,0.05,0.01,1)  |
      | IncubationTime  | float  | truncnorm(3,1.5,1,5)  |
      | RecoveryTime  | float  | truncnorm(2.5,1.25,1,5)  |
      | EncounterRate  | float  | truncnorm(4,2,1,10)  |
    And the following variables are recorded at the end of the simulation
      | variable          | type |
      | deceased  | float  |
      | recovered  | float  |
      | cases  | float  |
      | peak  | int  |
      | peak_infectious  | float  |

  Scenario: Draw DAG
    Given a connected DAG
    When we prune the following edges
      | s1                | s2                 |
      | deceased | .* | 
      | recovered | .* | 
      | cases | .* | 
      | peak | .* | 
      | peak_infectious | .* | 

