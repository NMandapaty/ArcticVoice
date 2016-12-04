Feature: User can login
	- User cannot login unless he/she has valid email credentials
	- No other informations is required
	- User can continue to browse the website without registration
  
  Background:
    Given I am on the home page

Scenario: Logging in without filling form
    #Given I follow "Logout"
    Given I follow "Log In"
    And I should see "Email"
    And I fill in "user_email" with ""
    And I fill in "user_password" with ""
    And I press "Log in"
    Then I should be on the login page

  Scenario: Logging in with wrong credentials
    #Given I follow "Logout"
    Given I follow "Log In"
    And I should see "Email"
    And I fill in "user_email" with "Trying new name"
    And I fill in "user_password" with "1231231234"
    And I press "Log in"
    Then I should be on the login page
    
    
  Scenario: Logging in with correct credentials
    Given I follow "Sign Up"
    And I should see "Email"
    And I fill in "user_name" with "Trying new name"
    And I fill in "user_email" with "triale@gmail.com"
    And I fill in "user_phone" with "1231231234"
    And I fill in "user_password" with "test123"
    And I fill in "user_password_confirmation" with "test123"
    And I press "Sign up"
    Then I should see "New Post"
    And I should see "Logout"
    And I should see "Profile"
    And I should not see "Log In"
    When I follow "Logout"
    And I follow "Log In"
    Then I should be on the login page
    And I fill in "user_email" with "triale@gmail.com"
    And I fill in "user_password" with "test123"
    And I press "Log in"
    Then I should be on the home page 
    And I should see "Logout"
    And I should not see "Log In"