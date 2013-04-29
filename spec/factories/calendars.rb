# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :calendar do
    date "2013-04-29"
    holiday false
  end
end
