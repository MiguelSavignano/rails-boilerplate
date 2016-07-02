FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    first_name { Faker::Name.name }
    last_name { Faker::Name.name }
    remote_avatar_url "/fake_avatar.png" #Faker::Avatar.image it's very slow
    password "12345678"
    phone { Faker::PhoneNumber.cell_phone }
  end
end

FactoryGirl.define do
  factory :user_admin do
    email { Faker::Internet.email }
    first_name "Admin"
    last_name "Admin"
    remote_avatar_url "/fake_avatar.png" #Faker::Avatar.image it's very slow
    password "12345678"
    phone { Faker::PhoneNumber.cell_phone }
  end
end
