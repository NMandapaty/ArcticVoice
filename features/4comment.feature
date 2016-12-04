Feature: Comment on a post
  As an engaged resident of the arctic 
  So that I can express interest in a topic
  I comment on a post
  
  Background:
    Given I am on the home page
    And I am logged in
    And I follow "New Post"
    And I fill in "post_title" with "The ice is melting"
    And I fill in "post_body" with "The ice is a lot lower than it was when I saw it a year ago"
    And I fill in "post_tags" with "hike, rambling, ice"
    And I press "Create Post"
    And I follow "Logout"
    
  Scenario: Add comment to a post
    Then I should see "ice is melting"
    And I should see "View Comments"
    And I follow "View Comments"
    # And I fill in "title" with "New Comment"
    # And I fill in "comment" with "That sounds interesting."
    # And I press "Submit"
    # Then I should see "New Comment"
    # Then I should see ..