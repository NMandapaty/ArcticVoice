Feature: View user profile
  As a narcissist
  So that I can see an image of myself
  I want to see my profile
    
  Background:
    Given I am on the home page
    And I am logged in
    
  Scenario: Log in and visit profile
    Given I follow "My Profile"
    Then I should see "Testy McUserton"
    
    
    