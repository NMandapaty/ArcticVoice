Feature: search for a post 
  As a climate hange activist
  So that I can learn more about the developments in the arctic
  I want to search for a post

  Scenario: search for a post
    Given I am on the home page
    And I am logged in 
    And I fill in "search_string" with "ice"
    And I tap the "enter key"
    Then I should see "hike"