Feature: search for a post 
  As a climate hange activist
  So that I can learn more about the developments in the arctic
  I want to search for a post
  
  Background:
    Given I am on the home page
    When I am logged in
    And I follow "New Post"
    And I fill in "post_title" with "Arctic Ice Melt"
    And I fill in "post_body" with "Our study shows that over the course of the last decade ..."
    And I fill in "post_tags" with "ice, arctic, research, study"
    And I press "Create Post"
    And I follow "New Post"
    And I fill in "post_title" with "Personal Experience in Norway"
    And I fill in "post_body" with "It was late in the evening and I was walking past the lake in ..."
    And I fill in "post_tags" with "experience, walk, evening, norway"
    And I press "Create Post"
    #And I follow "Logout"
    
  Scenario: Search for
    Given I am on the home page
    #And I am logged in
    And I fill in "search_string" with "ice"
    And I tap the "enter key"
    Then I should see "Arctic Ice Melt"
    And I should see "Our study shows that"
    And I should see "arctic"
    And I should see "sresearch"
    And I should not see "Norway"
    And I should not see "walk"
    And I should not see "I was walking past"