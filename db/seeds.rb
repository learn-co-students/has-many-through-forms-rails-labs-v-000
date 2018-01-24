# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(name: "Cool")
Post.create(title: "So Awesome", content: "Man am I a great blogger OR WHAT!")
User.create(username: 'RealBigFish')
User.create(username: 'Goldfinger')
Comment.create(content: "This is a sample comment", user_id: 1, post_id: 1)
Comment.create(content: "Another comment about a post", user_id: 2, post_id: 1)
Comment.create(content: "A second comment by Goldfinger", user_id: 2, post_id: 1)