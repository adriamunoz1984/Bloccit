# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'
 
5.times do
  user = User.new(
    name: faker::Name.name,
    email: faker::Internet.email,
    password: faker::Lorem.characters(10)
    )
  user.skip_confirmation!
  user.save!
end

users = User.all

 # Create Posts
 50.times do
   Post.create!(
    user: users.sample,
     title:  Faker::Lorem.sentence,
     body:   Faker::Lorem.paragraph
   )
 end
 posts = Post.all
 
 # Create Comments
 100.times do
   Comment.create!(
    # user: users.sample, #we havent associated users to comments yet
     post: posts.sample,
     body: Faker::Lorem.paragraph
   )
 end
 
 user = User.first
 user.skip_confirmation!
 user.update_attributes!(
  email: 'am120284@gmail.com',
  password: 'helloworld'
  )

 puts "Seed finished"
 puts "#{User.count} users created"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"