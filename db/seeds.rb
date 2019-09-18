# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
post = Post.create(title: "Hello", content: "This is me")
user = User.create(username: "mk4555", email: "mk4555@nyu.edu")
comment = Comment.create(content: "LOL", user_id: user.id, post_id: post.id)
category = Category.create(name: "Dogs")
post.categories <<  category
category.posts << post
