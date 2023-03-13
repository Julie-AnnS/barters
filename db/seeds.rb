Review.destroy_all
Conversation.destroy_all
Message.destroy_all
Offer.destroy_all
User.destroy_all

user1 = User.create!(
  email: "a@a.a",
  password: "123456",
  first_name: "Annie",
  last_name: "Smith",
  nickname: "Annie Smith Apple",
  phone_number: "1234567891",
  location: "Montreal",
  language: "English",
  bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  services: "painting, sculpting",
  currently_offering: "painting",
  currently_looking: "musician"
)

user2 = User.create!(
  email: "b@b.b",
  password: "123456",
  first_name: "Vincent",
  last_name: "Van Gogh",
  nickname: "the one ear wonder",
  phone_number: "1234567892",
  location: "France",
  language: "Dutch",
  bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  services: "painting, sculpting",
  currently_offering: "painting",
  currently_looking: "musician"
)

user3 = User.create!(
  email: "c@c.c",
  password: "123456",
  first_name: "Bob",
  last_name: "Ross",
  nickname: "bob.ross",
  phone_number: "1234567893",
  location: "Montreal",
  language: "English",
  bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  services: "painting, sculpting",
  currently_offering: "painting",
  currently_looking: "musician"
)

offer = Offer.create!(
  start_date: DateTime.new(2023, 3, 8, 4, 5, 6),
  end_date: DateTime.new(2023, 3, 10, 4, 5, 6),
  my_tasks: "I will paint",
  others_tasks: "You will play music",
  deposit: 250,
  status: "pending",
  requester_id: user1.id,
  collaborator_id: user2.id
)

review = Review.create!(
  offer: offer,
  content: "amazing",
  rating: 5.0,
  user: user1
)

convo1 = Conversation.create(participant_one_id: user1.id, participant_two_id: user2.id)

msg = Message.create!(
  content: "hey",
  conversation: convo1,
  user: user1
)

msg2 = Message.create!(
  content: "hi",
  conversation: convo1,
  user: user2
)
#require "open-uri"
#require "faker"

#puts "cleaning database"
#User.destroy_all



#user1 = User.create!(
 # first_name: Faker::Name.first_name,
 # last_name: Faker::Name.last_name,
 # nickname: Faker::Superhero.name,
 # phone_number: Faker::PhoneNumber.cell_phone,
  # phone_number: "5149991231",
 # location: Faker::Address.country,
 # language: Faker::Nation.language,
 # email: "a@a.a",
 # password: "123456"
#)

#user2 = User.create!(
 # first_name: Faker::Name.first_name,
 # last_name: Faker::Name.last_name,
 # nickname: Faker::Superhero.name,
 # phone_number: Faker::PhoneNumber.cell_phone,
 # location: Faker::Address.country,
 # language: Faker::Nation.language,
 # email: "b@b.b",
 # password: "123456"
#)

#user3 = User.create!(
 # first_name: Faker::Name.first_name,
 # last_name: Faker::Name.last_name,
 # nickname: Faker::Superhero.name,
 # phone_number: Faker::PhoneNumber.cell_phone,
 # location: Faker::Address.country,
 # language: Faker::Nation.language,
 # email: "c@c.c",
 # password: "123456"
#)
