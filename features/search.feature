Feature: search for a post 
  As a climate hange activist
  So that I can learn more about the developments in the arctic
  I want to search for a post

Before do
    Given I am on the home page
    And I am logged in 
end


  Scenario: Create a post
    
    And I follow "New Post"
    And I fill in "post_title" with "Post 1"
    And I fill in "post_body" with "Body of Post 1"
    And I fill in "post_tags" with "hello, hi, wow"
    And I press "Create Post"
    Then I should see "hi"
    And I should see "hello"
    And I should see "Post 1"
    And I should see "Body of Post 1"
    And I should not see "What is this"
    And I should see "Testy McUserton"
    
  Scenario: search for a post
    #Given I am on the home page
    #And I am logged in
    And I fill in "search_string" with "1"
    And I tap the "enter key"
    Then I should see "hello"