Review.destroy_all
Conversation.destroy_all
Message.destroy_all
Offer.destroy_all
User.destroy_all

# julie-ann's user
user1 = User.create!(
  email: "a@a.a",
  password: "123456",
  first_name: "Julie-Ann",
  last_name: "Selman",
  nickname: "julieann",
  phone_number: "1234567891",
  location: "Montreal",
  language: "English, French",
  bio: "hey girlll",
  services: "Sewing, Embroidery, Knitting",
  currently_offering: "Knitting, Sewing",
  currently_looking: "Painter"
)

user1.avatar.attach(
  io: File.open(File.join(Rails.root,'app/assets/images/julie.jpg')),
  filename: 'julie.jpg'
)

#lara's user
user2 = User.create!(
  email: "b@b.b",
  password: "123456",
  first_name: "Lara",
  last_name: "Andrade",
  nickname: "larandrade",
  phone_number: "1234567892",
  location: "Montreal",
  language: "Portuguese, French, German, English",
  bio: "Earth without 'art' is just 'eh'!!!!!",
  services: "Painting, DJ",
  currently_offering: "Painting",
  currently_looking: "Seamstress"
)

user2.avatar.attach(
  io: File.open(File.join(Rails.root,'app/assets/images/lara.jpg')),
  filename: 'lara.jpg'
)

#quentin's user
user3 = User.create!(
  email: "c@c.c",
  password: "123456",
  first_name: "Quentin",
  last_name: "Doulcet",
  nickname: "onehandman",
  phone_number: "1234567893",
  location: "Montreal",
  language: "French, English",
  bio: "I am a professional sculptor.",
  services: "sculpting",
  currently_offering: "sculpting",
  currently_looking: "Seamstress"
)

user3.avatar.attach(
  io: File.open(File.join(Rails.root,'app/assets/images/kantun.jpg')),
  filename: 'kantun.jpg'
)

#nilsu's user
user4 = User.create!(
  email: "d@d.d",
  password: "123456",
  first_name: "Nilsu",
  last_name: "Duran",
  nickname: "duranilsu",
  phone_number: "1234567892",
  location: "Rochester",
  language: "Turkish, English, French",
  bio: "My mother always used to say: The older you get, the better you get, unless you're a banana.",
  services: "Drawing, Writing",
  currently_offering: "Writing",
  currently_looking: "Painter"
)

user4.avatar.attach(
  io: File.open(File.join(Rails.root,'app/assets/images/nilsu.jpg')),
  filename: 'nilsu.jpg'
)

#denis belanger
user5 = User.create!(
  email: "e@e.e",
  password: "123456",
  first_name: "Denis",
  last_name: "Belanger",
  nickname: "denisbelanger",
  phone_number: "1234567893",
  location: "Montreal",
  language: "English",
  bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  services: "Light Effects",
  currently_offering: "Light Effects",
  currently_looking: "Musician"
)

user5.avatar.attach(
  io: File.open(File.join(Rails.root,'app/assets/images/denis.jpg')),
  filename: 'denis.jpg'
)

#cynthia cockburn
user6 = User.create!(
  email: "f@f.f",
  password: "123456",
  first_name: "Cynthia",
  last_name: "Cockburn",
  nickname: "cynthia",
  phone_number: "1234567892",
  location: "Montreal",
  language: "English",
  bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  services: "Sculpting",
  currently_offering: "Scultping",
  currently_looking: "Painter"
)

user6.avatar.attach(
  io: File.open(File.join(Rails.root,'app/assets/images/cynthia.jpg')),
  filename: 'cynthia.jpg'
)

#Valerie Roger
user7 = User.create!(
  email: "g@g.g",
  password: "123456",
  first_name: "Valerie",
  last_name: "Roger",
  nickname: "valerie",
  phone_number: "1234567892",
  location: "France",
  language: "French",
  bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  services: "Painter",
  currently_offering: "Painting",
  currently_looking: "Musician"
)

user7.avatar.attach(
  io: File.open(File.join(Rails.root,'app/assets/images/valerie.jpg')),
  filename: 'valerie.jpg'
)

#lilaeloise costa
user8 = User.create!(
  email: "h@h.h",
  password: "123456",
  first_name: "Liliana",
  last_name: "Costa",
  nickname: "lila",
  phone_number: "1234567893",
  location: "Brazil",
  language: "Portuguese",
  bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  services: "Painting, Sculpting",
  currently_offering: "Painting",
  currently_looking: "Musician"
)

user8.avatar.attach(
  io: File.open(File.join(Rails.root,'app/assets/images/mae1.jpg')),
  filename: 'mae1.jpg'
)

#norberto freitas
user9 = User.create!(
  email: "i@i.i",
  password: "123456",
  first_name: "Norberto",
  last_name: "Freitas",
  nickname: "norberto",
  phone_number: "1234567893",
  location: "Berlin",
  language: "German",
  bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  services: "Writer",
  currently_offering: "Writer",
  currently_looking: "Musician"
)

user9.avatar.attach(
  io: File.open(File.join(Rails.root,'app/assets/images/paii.jpg')),
  filename: 'paii.jpg'
)

#nilufer aykar
user9 = User.create!(
  email: "l@l.l",
  password: "123456",
  first_name: "Nilüfer",
  last_name: "Aykar",
  nickname: "niluferaykar",
  phone_number: "1234567892",
  location: "Istanbul",
  language: "Turkish, English",
  bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  services: "Ice-skating",
  currently_offering: "Dancing",
  currently_looking: "Sculptor"
)

user9.avatar.attach(
  io: File.open(File.join(Rails.root,'app/assets/images/nilufer.jpg')),
  filename: 'nilufer.jpg'
)

#nukhet aykar
user10 = User.create!(
  email: "n@n.n",
  password: "123456",
  first_name: "Nükhet",
  last_name: "Aykar",
  nickname: "nukhet",
  phone_number: "1234567892",
  location: "Turkey",
  language: "Turkish, French",
  bio: "I love my daughters, son, granddaughters and embroidering.",
  services: "Crocheting",
  currently_offering: "Painting",
  currently_looking: "Musician"
)

user10.avatar.attach(
  io: File.open(File.join(Rails.root,'app/assets/images/anneanne.jpg')),
  filename: 'anneanne.jpg'
)

#erkan aykar
user11 = User.create!(
  email: "y@y.y",
  password: "123456",
  first_name: "Erkan",
  last_name: "Aykar",
  nickname: "erkan",
  phone_number: "1234567892",
  location: "Turkey",
  language: "Turkish, English",
  bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  services: "Directing movies",
  currently_offering: "Director",
  currently_looking: "Musician"
)

user11.avatar.attach(
  io: File.open(File.join(Rails.root,'app/assets/images/dede.jpg')),
  filename: 'dede.jpg'
)

#BRIAN!
user12 = User.create!(
  email: "z@z.z",
  password: "123456",
  first_name: "Brian",
  last_name: "Pigeonson",
  nickname: "pigeonrip",
  phone_number: "1234567892",
  location: "Montreal",
  language: "pain",
  bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  services: "Save him",
  currently_offering: "Nothing",
  currently_looking: "Help"
)

user12.avatar.attach(
  io: File.open(File.join(Rails.root,'app/assets/images/brianhaha.jpg')),
  filename: 'brianhaha.jpg'
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
