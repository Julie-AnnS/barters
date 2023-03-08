require "open-uri"
require "faker"

puts "cleaning database"
User.destroy_all



user1 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  nickname: Faker::Superhero.name,
  phone_number: Faker::PhoneNumber.cell_phone,
  # phone_number: "5149991231",
  location: Faker::Address.country,
  language: Faker::Nation.language,
  email: "a@a.a",
  password: "123456"
)

user2 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  nickname: Faker::Superhero.name,
  phone_number: Faker::PhoneNumber.cell_phone,
  location: Faker::Address.country,
  language: Faker::Nation.language,
  email: "b@b.b",
  password: "123456"
)

user3 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  nickname: Faker::Superhero.name,
  phone_number: Faker::PhoneNumber.cell_phone,
  location: Faker::Address.country,
  language: Faker::Nation.language,
  email: "c@c.c",
  password: "123456"
)
