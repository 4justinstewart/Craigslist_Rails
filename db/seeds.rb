# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

30.times do
  User.create(email: Faker::Internet.email, password_hash: 'password')
end

10.times do
  Category.create(title: Faker::Lorem.sentence)
end

50.times do
  Post.create(user_id: rand(1..User.all.count), category_id: rand(1..Category.all.count), img_url: "http://bossip.files.wordpress.com/2014/05/snoop-dogg-51150de51ebec.jpg", title: Faker::Lorem.sentence, description: Faker::Lorem.paragraph)
end
