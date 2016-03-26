FactoryGirl.define do
  factory :team do
    name Faker::Team.name
    organisation nil
  end
end
