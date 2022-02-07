Feature: Compare test
  Background:
    Given a simulation with parameters
      | parameter     | value      | type |
      | fsff  | 352  | int  |
      | sfsf  | 2  | int  |
      | fs  | 52  | int  |
    And the following variables are recorded weekly
      | variable          | type |
      | dad  | adad  |
Feature: Compare test
  Background:
    Given a simulation with parameters
      | parameter     | value      | type |
      | fsff  | 352  | int  |
      | sfsf  | 2  | int  |
      | fs  | 52  | int  |
    And the following variables are recorded weekly
      | variable          | type |
      | dad  | adad  |
  Scenario: Draw DAG
    Given a connected dags
    When we prune the following edges
      | s1                | s2                 |
      | fsff | fsff | 
      | fsff | sfsf | 
      | fsff | fs | 
      | fsff | dad | 
      | sfsf | fsff | 
      | sfsf | sfsf | 
      | sfsf | fs | 
      | sfsf | dad | 
