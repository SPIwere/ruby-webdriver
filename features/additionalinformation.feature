Feature: Additional information based on iFrame

  Scenario: Locate on the iFrame
    Given I open new page
    When I land on the "Sample Page"
    Then I locate mouth on the iFrame element
    And I see "mouse detected over iframe" message
    When I put additional Name and Phone