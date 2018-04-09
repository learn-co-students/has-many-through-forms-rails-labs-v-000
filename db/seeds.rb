# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
post = Post.create(title: "Post 1 Title", content: "Post 1 Content")
user = User.create(username: "User 1", email: "email does not matter")

user.posts << post

User.create(username: "User 2", email: "email 2")

category1 = Category.create(name: "Happy")
category2 = Category.create(name: "Sad")