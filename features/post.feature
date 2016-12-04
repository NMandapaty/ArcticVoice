Feature: Create a post
  As a resident of the arctic
  So as to create awareness for changes int he arctic
  I want to make a post of a change in my surroundings

  Background:
    Given I am on the home page
    And I am logged in 
    And I follow "New Post"
    And I fill in "post_title" with "THe ice is melting"
    And I fill in "post_body" with "The ice is a lot lower than it was when I saw it a year ago"
    And I fill in "post_tags" with "save the planet"
    And I press "Create Post"
    Then I should see "save the planet"
    And I should see "THe ice is melting"
    And I should see "lower than it as when I saw it a year ago"
    And I should not see "What is this"
    And I should see "Testy McUserton"
