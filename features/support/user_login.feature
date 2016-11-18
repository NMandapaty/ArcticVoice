Feature: Sign in
  In order to get access to protected sections of the site
  A user
  Should be able to sign in

    Scenario: User is not signed up
      Given I do not exist as a user
      When I sign in with valid credentials
      #Then I see an invalid login message
      And I should be signed out

#    Scenario: User signs in successfully
#      Given I exist as a user
#        And I am not logged in
#      When I sign in with valid credentials
#      Then I see a successful sign in message
#      When I return to the site
#      Then I should be signed in

    Scenario: User enters wrong email
      Given I exist as a user
      And I am not logged in
      When I sign in with a wrong email
      Then I see an invalid login message
      And I should be signed out
      
    Scenario: User enters wrong password
      Given I exist as a user
      And I am not logged in
      When I sign in with a wrong password
      Then I see an invalid login message
      And I should be signed out

#Scenario: user login
#	Given I am on new_user_session
#	And I type in email "eatna@yahoo.com" password "password"
#	When I follow "Submit"
#	Then I should be on the home page
#	And I should see "New Post"

#Scenario: user sign_up
#	Given I am on the login page
#    When I enter credentials email "e@mail.com", password "", password_confirmation ""
#    When I follow "Sign in with GitHub"
#	Then I should be on the home page
#	And I should see "Signed in successfully." 