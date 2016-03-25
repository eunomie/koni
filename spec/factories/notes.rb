FactoryGirl.define do
  factory :note do
    local_date Faker::Date.backward(10)
    body Faker::Hipster.paragraph
    organization nil
  end
end
