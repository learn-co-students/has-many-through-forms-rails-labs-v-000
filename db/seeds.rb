# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.destroy_all
User.destroy_all
Comment.destroy_all
Post.destroy_all
Category.create(name: "Inspiring")
Category.create(name: "Buzzworthy")
Category.create(name: "Hilarious")
Category.create(name: "Thought-provoking")
Category.create(name: "Nature")
user1 = User.create(username: "darkblade409", email: "darkblade409@aol.com")
user2 = User.create(username: "surferboy369", email: "surferboy369@aol.com")
comment1 = Comment.create(content: "This is awesome!")
comment2 = Comment.create(content: "First")
comment3 = Comment.create(content: "lol you crazy")
comment4 = Comment.create(content: "Ew Jesus, gross")
post1 = Post.create(title: "Code to Joy", content: "This is going pretty great so far so good we'll see how it goes. I hope I'm good at this because I'm worried I won't be. What if I'm not smart enough? What if this is the best I'll ever be?")
user1.comments << comment1
user1.comments << comment2
user2.comments << comment3
user2.comments << comment4
post1.comments << comment1
post1.comments << comment2
post1.comments << comment3
post1.comments << comment4
