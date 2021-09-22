Feature: Predator_prey_population
  Background:
    Given a simulation with parameters
      | parameter                     | type  | value |
      | PREY_POPULATION_SIZE          | int   | 250   |
      | PREDATOR_POPULATION_SIZE      | int   | 25    |
      | GRASS_POPULATION_SIZE         | int   | 0     |
      | GAIN_FROM_FOOD_PREY           | int   | 0     |
      | GAIN_FROM_FOOD_PREDATOR       | int   | 75    |
      | GRASS_REGROW_CYCLES           | int   | 0     |
      | PREY_REPRODUCTION_CHANCE      | float | 0.05  |
      | PREDATOR_REPRODUCTION_CHANCE  | float | 0.03  |
      | STEPS                         | int   | 1000  |
    And the following variables are recorded every time step
      | variable        | type |
      | alive_prey      | int  |
      | alive_predators | int  |
      | available_grass | int  |
      | oscillations    | int  |
      | step            | int  |

  @draw_dag
  Scenario: Draw DAG
    Given a connected repeating unit
    When we prune the following edges
    | s1                       | s2      |
    | PREY_POPULATION_SIZE     | step_n  |
    | PREDATOR_POPULATION_SIZE | step_n  |
    | GRASS_POPULATION_SIZE    | step_n  |
    | GAIN_FROM_FOOD_PREY      | step_n  |
    | GRASS_REGROW_CYCLES      | step_n  |
    | PREY_REPRODUCTION_CHANCE | step_n  |
    | alive_prey_n             | step_n1 |
    | alive_predators_n        | step_n1 |
    | available_grass_n        | step_n1 |
    | oscillations_n           | step_n1 |
    Then we obtain the causal DAG for 1000 time steps

  ### Altering initial predator population sizes ###
  Scenario: Some predators
    Given we run the model with PREDATOR_POPULATION_SIZE=0
    When we run the model with PREDATOR_POPULATION_SIZE=100
    Then it should be the case that oscillations>0

  Scenario: Predators cause prey extinction
    Given we run the model with PREDATOR_POPULATION_SIZE=0
    When we run the model with PREDATOR_POPULATION_SIZE=200
    Then it should be the case that alive_prey=0
    And alive_predators=0
    And oscillations>=1

  Scenario: Predator numbers cause memory crash
    Given we run the model with PREDATOR_POPULATION_SIZE=0
    When we run the model with PREDATOR_POPULATION_SIZE=50000
    Then it should be the case that alive_prey=0
    And alive_predators>PREDATOR_POPULATION_SIZE
    And oscillations=0
    And step<STEPS

  Scenario: Prey numbers cause memory crash (No predators)
    Given we run the model with PREDATOR_POPULATION_SIZE=25
    When we run the model with PREDATOR_POPULATION_SIZE=0
    Then it should be the case that alive_prey>PREY_POPULATION_SIZE
    And oscillations=0
    And step<STEPS

  ### Altering initial prey population sizes ###
  Scenario: Low prey numbers
    Given we run the model with PREY_POPULATION_SIZE=250
    When we run the model with PREY_POPULATION_SIZE=20
    Then it should be the case that  oscillations>0
    And alive_predators=0
    And alive_prey=0

  ### Altering predator reproduction chance ###
  Scenario: Low predator reproduction chance
    Given we run the model with PREDATOR_REPRODUCTION_CHANCE=0.03
    When we run the model with PREDATOR_REPRODUCTION_CHANCE=0.001
    Then it should be the case that oscillations>=0
    And alive_predators=0
    And alive_prey=0

  Scenario: Reasonable predator reproduction chance
    Given we run the model with PREDATOR_REPRODUCTION_CHANCE=0.03
    When we run the model with PREDATOR_REPRODUCTION_CHANCE=0.1
    Then it should be the case that oscillations>0
    And alive_predators=0
    And alive_prey=0

  Scenario: Excessive predator reproduction chance
    Given we run the model with PREDATOR_REPRODUCTION_CHANCE=0.03
    When we run the model with PREDATOR_REPRODUCTION_CHANCE=0.25
    Then it should be the case that oscillations=1
    And alive_predators=0
    And alive_prey=0

  ### Altering prey reproduction chance ###
  Scenario: Low prey reproduction chance
    Given we run the model with PREY_REPRODUCTION_CHANCE=0.05
    When we run the model with PREY_REPRODUCTION_CHANCE=0.001
    Then it oscillations<=1
    And alive_predators=0
    And alive_prey=0

  Scenario: Reasonable prey reproduction chance
    Given we run the model with PREY_REPRODUCTION_CHANCE=0.05
    When we run the model with PREY_REPRODUCTION_CHANCE=0.1
    Then it should be the case that oscillations>=0
    And alive_predators=0
    And alive_prey=0

  Scenario: Excessive prey reproduction chance
    Given we run the model with PREY_REPRODUCTION_CHANCE=0.05
    When we run the model with PREY_REPRODUCTION_CHANCE=0.25
    Then it should be the case that oscillations=0
    And alive_predators=0
    And alive_prey=0
    And step<=STEPS

  ### Altering predator energy gain from consuming prey ###
  Scenario: Low energy gain
    Given we run the model with GAIN_FROM_FOOD_PREDATOR=75
    When we run the model with GAIN_FROM_FOOD_PREDATOR=20
    Then it should be the case that oscillations>0
    And alive_predators=0
    And alive_prey=0

  Scenario: Reasonable energy gain
    Given we run the model with GAIN_FROM_FOOD_PREDATOR=75
    When we run the model with GAIN_FROM_FOOD_PREDATOR=100
    Then it should be the case that oscillations>0
    And alive_predators>=0
    And alive_prey>=0

  Scenario: High energy gain
    Given we run the model with GAIN_FROM_FOOD_PREDATOR=75
    When we run the model with GAIN_FROM_FOOD_PREDATOR=250
    Then it should be the case that oscillations=1
    And alive_predators>=0
    And alive_prey=0

  ### Altering number of steps model is run for ###
  Scenario: Few steps
    Given we run the model with STEPS=1000
    When we run the model with STEPS=10
    Then it should be the case that alive_prey>PREY_POPULATION_SIZE
    And oscillations>=0
    And alive_predators>=PREDATOR_POPULATION_SIZE

  Scenario: Expected prey extinction
    Given we run the model with STEPS=1000
    When we run the model with STEPS=500
    Then it should be the case that alive_prey=0
    And oscillations>0
    And alive_predators>0

  Scenario: Expected predator extinction
    Given we run the model with STEPS=1000
    When we run the model with STEPS=900
    Then it should be the case that alive_prey=0
    And oscillations>0
    And alive_predators=0
