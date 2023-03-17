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
  bio: "this is an easter egg.",
  services: "Crocheter",
  currently_offering: "A sewing machine",
  currently_looking: "A painter"
)

user1.photo.attach(
  io: File.open(File.join(Rails.root,'app/assets/images/index-crocheter.jpg')),
  filename: 'index-crocheter.jpg'
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
  bio: "Painting allows me to express emotions and ideas through bold strokes and vivid colors. It is really fun!",
  services: "Painter",
  currently_offering: "I’ll paint something for you!",
  currently_looking: "Vintage fabric"
)

user2.photo.attach(
  io: File.open(File.join(Rails.root,'app/assets/images/larapaint.jpg')),
  filename: 'larapaint.jpg'
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
  bio: "Bringing life to clay through expert techniques and a love of the art.",
  services: "Ceramic Artist",
  currently_offering: "Ceramic lessons.",
  currently_looking: "Someone to make a nice drawing of my dog."
)

user3.photo.attach(
  io: File.open(File.join(Rails.root,'app/assets/images/quentinceramic.jpg')),
  filename: 'quentinceramic.jpg'
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
  services: "Illustrator",
  currently_offering: "Illustration lessons",
  currently_looking: "A painter"
)

user4.photo.attach(
  io: File.open(File.join(Rails.root,'app/assets/images/index-illustrator.jpg')),
  filename: 'index-illustrator.jpg'
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
  services: "Jeweler",
  currently_offering: "Jeweler services",
  currently_looking: "A Musician"
)

user5.photo.attach(
  io: File.open(File.join(Rails.root,'app/assets/images/index-jeweler.jpg')),
  filename: 'index-jeweler.jpg'
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
  services: "Sculptor",
  currently_offering: "Scultping",
  currently_looking: "A painter"
)

user6.photo.attach(
  io: File.open(File.join(Rails.root,'app/assets/images/index-sculpt.jpg')),
  filename: 'index-sculpt.jpg'
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
  services: "Collager",
  currently_offering: "Collages",
  currently_looking: "A Musician"
)

user7.avatar.attach(
  io: File.open(File.join(Rails.root,'app/assets/images/valerie.jpg')),
  filename: 'valerie.jpg'
)

user7.photo.attach(
  io: File.open(File.join(Rails.root,'app/assets/images/index-collager.jpg')),
  filename: 'index-collager.jpg'
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
  services: "Bagmaker",
  currently_offering: "Bagmaker",
  currently_looking: "A Musician"
)

user8.avatar.attach(
  io: File.open(File.join(Rails.root,'app/assets/images/mae1.jpg')),
  filename: 'mae1.jpg'
)

user8.photo.attach(
  io: File.open(File.join(Rails.root,'app/assets/images/index-bagmaker.jpg')),
  filename: 'index-bagmaker.jpg'
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
  currently_looking: "A Musician"
)

user9.avatar.attach(
  io: File.open(File.join(Rails.root,'app/assets/images/paii.jpg')),
  filename: 'paii.jpg'
)

user9.photo.attach(
  io: File.open(File.join(Rails.root,'app/assets/images/writer.jpg')),
  filename: 'writer.jpg'
)

#nilufer aykar
user10 = User.create!(
  email: "l@l.l",
  password: "123456",
  first_name: "Nilüfer",
  last_name: "Aykar",
  nickname: "niluferaykar",
  phone_number: "1234567892",
  location: "Istanbul",
  language: "Turkish, English",
  bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  services: "Carver",
  currently_offering: "Carving",
  currently_looking: "A Sculptor"
)

user10.avatar.attach(
  io: File.open(File.join(Rails.root,'app/assets/images/nilufer.jpg')),
  filename: 'nilufer.jpg'
)

user10.photo.attach(
  io: File.open(File.join(Rails.root,'app/assets/images/index-carver.jpg')),
  filename: 'index-carver.jpg'
)

#nukhet aykar
user11 = User.create!(
  email: "n@n.n",
  password: "123456",
  first_name: "Nükhet",
  last_name: "Aykar",
  nickname: "nukhet",
  phone_number: "1234567892",
  location: "Turkey",
  language: "Turkish, French",
  bio: "Passionate embroiderer with a needle in one hand and a thread in the other. I have never stopped since my mother and aunts first taught me when I was 10 years old.",
  services: "Embroiderer",
  currently_offering: "I can embroider designs on your tea towels, pillowcases, etc.",
  currently_looking: "A sewing machine."
)

user11.photo.attach(
  io: File.open(File.join(Rails.root,'app/assets/images/embroiderer.jpg')),
  filename: 'embroiderer.jpg'
)

user11.avatar.attach(
  io: File.open(File.join(Rails.root,'app/assets/images/anneanne.jpg')),
  filename: 'nukhet.jpg'
)

#erkan aykar
user12 = User.create!(
  email: "y@y.y",
  password: "123456",
  first_name: "Erkan",
  last_name: "Aykar",
  nickname: "erkan",
  phone_number: "1234567892",
  location: "Turkey",
  language: "Turkish, English",
  bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  services: "TV Director",
  currently_offering: "Director",
  currently_looking: "A Musician"
)

user12.avatar.attach(
  io: File.open(File.join(Rails.root,'app/assets/images/dede.jpg')),
  filename: 'dede.jpg'
)

user12.photo.attach(
  io: File.open(File.join(Rails.root,'app/assets/images/dir.jpg')),
  filename: 'dir.jpg'
)

#BRIAN!
user13 = User.create!(
  email: "z@z.z",
  password: "123456",
  first_name: "Brian",
  last_name: "Pigeonson",
  nickname: "pigeonrip",
  phone_number: "1234567892",
  location: "Montreal",
  language: "pain",
  bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  services: "Actor",
  currently_offering: "Nothing",
  currently_looking: "Help"
)

user13.avatar.attach(
  io: File.open(File.join(Rails.root,'app/assets/images/brianhaha.jpg')),
  filename: 'brianhaha.jpg'
)

user13.photo.attach(
  io: File.open(File.join(Rails.root,'app/assets/images/actor.jpg')),
  filename: 'actor.jpg'
)

offer = Offer.create!(
  start_date: DateTime.new(2023, 3, 8, 4, 5, 6),
  end_date: DateTime.new(2023, 3, 17, 4, 5, 6),
  my_tasks: "I will paint",
  others_tasks: "You will play music",
  deposit: 200,
  status: "accepted",
  requester_id: user1.id,
  collaborator_id: user2.id
)

offer2 = Offer.create!(
  start_date: DateTime.new(2023, 3, 10, 4, 5, 6),
  end_date: DateTime.new(2023, 3, 24, 4, 5, 6),
  my_tasks: "I will paint",
  others_tasks: "You will play music",
  deposit: 300,
  status: "accepted",
  requester_id: user1.id,
  collaborator_id: user4.id
)

offer3 = Offer.create!(
  start_date: DateTime.new(2023, 3, 15, 4, 5, 6),
  end_date: DateTime.new(2023, 3, 18, 4, 5, 6),
  my_tasks: "I will paint",
  others_tasks: "You will play music",
  deposit: 0,
  status: "accepted",
  requester_id: user1.id,
  collaborator_id: user6.id
)

offer4 = Offer.create!(
  start_date: DateTime.new(2023, 3, 16, 4, 5, 6),
  end_date: DateTime.new(2023, 3, 28, 4, 5, 6),
  my_tasks: "I will paint",
  others_tasks: "You will play music",
  deposit: 250,
  status: "accepted",
  requester_id: user9.id,
  collaborator_id: user1.id
)

offer5 = Offer.create!(
  start_date: DateTime.new(2023, 3, 6, 4, 5, 6),
  end_date: DateTime.new(2023, 3, 11, 4, 5, 6),
  my_tasks: "I will paint",
  others_tasks: "You will play music",
  deposit: 0,
  status: "accepted",
  requester_id: user8.id,
  collaborator_id: user1.id
)

review = Review.create!(
  offer: offer,
  content: "Amazing artist, really creative!",
  rating: 5.0,
  user: user4
)

review2 = Review.create!(
  offer: offer2,
  content: "Amazing artist, really creative!",
  rating: 5.0,
  user: user4
)

review3 = Review.create!(
  offer: offer3,
  content: "Amazing artist, really creative!",
  rating: 5.0,
  user: user6
)

review4 = Review.create!(
  offer: offer4,
  content: "Amazing artist, really creative!",
  rating: 5.0,
  user: user5
)


convo1 = Conversation.create(participant_one_id: user1.id, participant_two_id: user2.id)

msg = Message.create!(
  content: "Hi Lara, how's it going?",
  conversation: convo1,
  user: user1
)

msg2 = Message.create!(
  content: "Great, you?",
  conversation: convo1,
  user: user2
)

msg3 = Message.create!(
  content: "How's your part of the offer going?",
  conversation: convo1,
  user: user1
)

msg4 = Message.create!(
  content: "Great, I am almost done!",
  conversation: convo1,
  user: user2
)

msg5 = Message.create!(
  content: "Cool, I'll catch you later!",
  conversation: convo1,
  user: user1
)
