Feature: View the 
 
  As a researcher
  So that I can have more data and context for my research
  I want to see work that other researchers have done on a topic and see what locals of the region have posted. 

Background: movies have been added to database
  
  Given the following papers exist:
  #we need to deicde the schema

  And I am on the ArcticVoice home page 

Scenario: View research paper by topic or location 
  When I select #some location or topic
  Then I should see #some research paper about that location or topic
  
Scenario: View inhabitant post by topic or location
  When I select #some location or topic
  Then I should see #some inhabitant post about that location or topic