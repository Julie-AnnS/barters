# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
require "faker"

user1 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  nickname: Faker::Superhero.name,
  phone_number: Faker::PhoneNumber.cell_phone,
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
