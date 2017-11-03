# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Category.create(name: "Cool")
Category.create(name: "Awesome")
Category.create(name: "Funny")

Post.create(title: "So Awesome", content: "Man am I a great blogger OR WHAT!")
Post.create(title: "So Awesome", content: "This is such a cool post")


User.create(username: 'RealBigFish')
User.create(username: 'MeganBass')
User.create(username: 'LilyDog')
