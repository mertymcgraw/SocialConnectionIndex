# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do 
  User.create(
    name: Faker::Name.name,
    linkedin_connections: rand(1..25),
    facebook_friends: rand(1..25),
    twitter_followers: rand(1..25)
    )
  
end 