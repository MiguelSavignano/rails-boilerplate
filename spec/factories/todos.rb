FactoryGirl.define do
  factory :todo do
    text {Faker::Lorem.sentences}
    complete false
  end
end
