 Feature: search for a post 
   As a climate change activist
   So that I can learn more about the developments in the arctic
   I want to search for a post

   Scenario: Create a post and search for it
     Given I am on the home page
     Given I exist as a user
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
     And I follow "My Profile"
     And I fill in "search_string" with "Post 1"
     
     And I tap the "enter key"
     
     Then I should see "hello"