User.create!(
  first_name: "Miguel",
  last_name: "Savignano",
  remote_avatar_url: Faker::Avatar.image,
  password: "12345678",
  email: "miguel@boda.market",
  phone: Faker::PhoneNumber.cell_phone
)
