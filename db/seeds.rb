# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
cat = Category.create(name: "Cool")
post = Post.create(title: "So Awesome", content: "Man am I a great blogger OR WHAT!")
user = User.create(username: 'RealBigFish')
Comment.create(content: "Great post you got there! - RBF", user_id: user.id, post_id: post.id)
Comment.create(content: "Nice going! -RBF", user_id: user.id, post_id: post.id)
