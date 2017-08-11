# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.destroy_all
Comment.destroy_all
User.destroy_all
Category.destroy_all

post1 = Post.create(title: "Post 1 Title", content: "Post 1's content goes here.")
post2 = Post.create(title: "Post 2 Title", content: "Post 2's content goes here.")


user1 = User.create(username: "User1", email: "user1@email.com")
user2 = User.create(username: "User2", email: "user2@email.com")

category1 = Category.create(name: "Cat1")
category2 = Category.create(name: "Cat2")
category3 = Category.create(name: "Cat3")

post1.categories << category1
post2.categories << category2
post2.categories << category3

comment1 = Comment.create(content:"This is the first comment.", user_id: 1, post_id: 1)
comment1 = Comment.create(content:"This is the second comment.", user_id: 1, post_id: 2)
