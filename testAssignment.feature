Feature: Input forms with Validations

  Scenario: Input forms into forms and check validation error
    Given User is on application homepage
    When user enter firstName as $firstName
    And user type lastName as $lastName
    And user type email as "varun1204@gmail.com"
    And user type phone as "9177776200"
    And user type address as "Wimbley Street"
    And user type city as "London"
    And user type zip code as "H4HNX"
    And user select state as "Florida"
    And user type zip code as "H4HNX"
    And user type website as currentPageUrl
    And user select hosting Option as No
    And user enter projectDescription as $projectDescription
    And user click on send button
    Then user should be able to see errorMessage as "input is invalid" # this field does not exist on webpage.
