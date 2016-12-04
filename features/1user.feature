Feature: User can register
	- User cannot register unless he/she has valid email credentials
	- No other informations is required
	- User can continue to browse the website without registration
  
  Background:
    Given I am on the home page
  
  Scenario:
    Given I follow "Sign Up"
    And I should see "Email"
    And I fill in "user_name" with "Trying new name"
    And I fill in "user_phone" with "1231231234"
    And I press "Sign up"
    Then I should see "2 errors prohibited this user from being saved"
    And I should see "Email can't be blank"
    And I should see "Password can't be blank"
    
  Scenario:
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