FactoryGirl.define do
  factory :mood do
    local_date Faker::Date.backward(10)
    organization nil
  end
end
