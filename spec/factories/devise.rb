# modified for use with mongoid: no explicit id
# see: https://www.matthewhoelter.com/2019/09/12/setting-up-and-testing-rails-6.0-with-rspec-factorybot-and-devise.html
FactoryBot.define do
  factory :user do
    name      {"Manny Testerman"}
    email     {"manny@testerman.com"}
    password  {"awesome"}
    # Add additional fields as required via your User model
  end

  # Not used in this tutorial, but left to show an example of different user types
  # factory :admin do
  #   email     {"test@admin.com"}
  #   password  {"qwerty"}
  #   admin     {true}
  # end
end
