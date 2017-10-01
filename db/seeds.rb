# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.destroy_all
Category.destroy_all
Post.destroy_all
Comment.destroy_all

u1 = User.create(username: "Cecily", email: "cec@gmail.com")
u2 = User.create(username: "Madison", email: "maddy@gmail.com")
u3 = User.create(username: "Sarah", email: "sarah@gmail.com")

c1 = Category.create(name: "Total Awesomeness")
c2 = Category.create(name: "Cute Extras")
c3 = Category.create(name: "You Won't Believe It")

p1 = Post.create(title: "It's Too Good To Be True", content: "Limited Time Offer Expiring Soon, so Click This Link!")
p2 = Post.create(title: "What is the meaning of life?", content: "Other than that number, I mean. Discuss below.")
p3 = Post.create(title: "I love October", content: "Halloween is almost here!")

comment1 = Comment.create(content: "Great post!", user: u1, post: p1)
comment2 = Comment.create(content: "Impressive!", user: u2, post: p2)
comment3 = Comment.create(content: "You're a poophead.", user: u3, post: p3)

p1.categories << c1
p2.categories << c2
p3.categories << c3