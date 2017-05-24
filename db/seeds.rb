# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

mike = User.create(username: "Mike")
sara = User.create(username: "Sara")

comment1 = Comment.create(content: "These shoes rule.")
comment2 = Comment.create(content: "These shoes suck.")
comment3 = Comment.create(content: "Hooray Beer.")
comment4 = Comment.create(content: "Your compliment was sufficient Luis.")

post1 = Post.create(title: "Tonight's Reservation", content: "I'm thinking Dorsea.")
post2 = Post.create(title: "Best Broadway Show", content: "Oh Africa, Brave Africa is the best.")
post3 = Post.create(title: "Best Business Card Color", content: "I think it's something call bone.")

category1 = Category.create(name: "Food")
category2 = Category.create(name: "Entertainment")
category3 = Category.create(name: "Work")
