Feature: Compare stanley
  Background:
    Given a simulation with parameters
      | parameter     | value      | type |
      | adad  | 1431  | int  |
      | daa  | 1414  | int  |
      | dad  | 144  | int  |
    And the following variables are recorded weekly
      | variable          | type |
      | dad  | ster  |
  Scenario: Draw DAG
    Given a connected dags
    When we prune the following edges
      | s1                | s2                 |
      | daa | adad | 
      | daa | daa | 
      | daa | dad | 
      | daa | dad | 
      | dad | adad | 
      | dad | daa | 
      | dad | dad | 
      | dad | dad | 
