# '''
# this is an issue with Mongoid and not FactoryGirl.
# essentially what FactoryGirl is doing behind the scenes: instantiating the object,
# assigning attributes, and saving the record.
# [...] the behavior of Mongoid and not FactoryGirl.
# What's happening is the object's default id is dependent on
# the object being instantiated with the correct data
# (which is why setting initialize_with works)
# [...] to override the behavior of FactoryGirl so it can accommodate
# '''
# see: https://github.com/thoughtbot/factory_bot/issues/544#issuecomment-23415367O
FactoryBot.define do
  initialize_with { new(attributes) }
end
