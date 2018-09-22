@webdriver
Feature: webdriver

  @google
  Scenario: google page
    Given I open "google" page and log details
    When I open "yahoo" page and log details
    When I open "sample" page and log details
    Then I go back and forward and refresh