@predefined
Feature: Embedded steps

  @predefined1
  Scenario: Cucumber embedded steps for Google
    Given I navigate to "https://google.com"
    Then element having xpath "//input[@name='q']" should be present
    When I enter "Behavior Driven Development framework" into input field having xpath "//input[@name='q']"
    Then I wait for 1 sec
    Then I click on element having xpath "//*[@value='Google Search']"
    Then element having xpath "//*[@id='ires']" should have partial text as "Cucumber"
    
    Then I forcefully click on element having <string> ".*"
