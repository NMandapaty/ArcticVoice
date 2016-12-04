Feature: Create a post
  As a resident of the arctic
  So as to create awareness for changes int he arctic
  I want to make a post of a change in my surroundings
  Also to check whether I can comment on the post
  
  Background:
    Given I am on the home page
    And I am logged in
    
  Scenario:
    And I follow "New Post"
    And I fill in "post_title" with "The ice is melting"
    And I fill in "post_body" with "The ice is a lot lower than it was when I saw it a year ago"
    And I fill in "post_tags" with "hike, rambling, ice"
    And I press "Create Post"
    Then I should see "The ice is melting"
    And I should see "lot lower than it was when I saw"
    And I should see "rambling"
    And I should see "ice"
    And I should not see "something random"
    And I should see "Testy McUserton"
    
  Scenario:
    And I follow "New Post"
    And I fill in "post_tags" with "hike, rambling, ice"
    And I press "Create Post"
    Then I should see "2 errors prohibited this post from being saved"
    And I should see "Title can't be blank"
    And I should see "Body can't be blank"
    And I should not see "hike"
    And I should not see "rambling"