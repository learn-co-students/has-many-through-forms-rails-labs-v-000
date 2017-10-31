# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(username: "rjcolmed", email: "rjcolmed@email.com")
user_2 = User.create(username: "caro", email: "caro@email.com")
post = Post.create(title: "This is a post", content: "Blah blah blah")
post_2 = Post.create(title: "This is another post", content: "Blor blor blor")

category = Category.create(name: "wow")

post.categories << category
post_2.categories << category

comment = Comment.create(content: "yayayayayayay", user: user, post: post)

