@tagPlaceholder1 @tagPlaceholder2
Feature: 
  Background:
    Given user inputs <"6"> 
    And user inputs <"3">

  Scenario Outline: Adition
     When use press <+>
     Then result = <"9">

  Scenario Outline: Division
     When use press </>
     Then result = <"2">

    Scenario Outline: Multiplication
         When use press <*>
         Then result = <"18">   
