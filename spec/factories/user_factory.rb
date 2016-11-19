FactoryGirl.define do
  factory :user do
    name "Testy McUserton"
    email "example@example.com"
    password "changeme"
    password_confirmation "changeme"
  end
end