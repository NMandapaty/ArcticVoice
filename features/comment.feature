Feature: Comment on a post
  As an engaged resident of the arctic 
  So that I can express interest in a topic
  I comment on a post
    
  Scenario: Create a post and comment on it
    Given I am on the home page
    And I exist as a user
    And I am logged in 
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
    And I fill in "search_string" with "Post 1"
    And I tap the "enter key"
    Then I should see "hello"
    # And I follow "View Comments"
    # And I fill in "title" with "comment title"
    # And I fill in "comment" with "comment body"
    # And I follow "comment"
    # Then I follow "View Comment"
    # And I should see "comment title"
    # And I should see "comment body"
    
#TODO(timifasubaa): Posting a comment when not logged in 
#  Scenario: Create a post and comment on it
#    Given I am on the home page
#    And I am not logged in 
#    And I follow "New Post"
#    And I follow "View comment"
#    Then I should see "Login"
  
#Todo(timifasubaa): edit a comment
