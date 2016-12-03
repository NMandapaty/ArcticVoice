Given(/^I tap the "([^"]*)"$/) do |arg1|
    find(".location").set(".location \n") # \n == return key
end

Given(/^that I am logged in$/) do
  page.should have_content("Logout")
end
