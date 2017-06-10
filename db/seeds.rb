# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.destroy_all
Comment.destroy_all
User.destroy_all
Post.destroy_all

cool = Category.create!(name: "Cool")
duh = Category.create!(name: "Duh")
no = Category.create!(name: "No")

post1 = Post.create!(title: "THIS POST", content: "THE CONTENT YAY")
post1.categories << cool
post1.categories << duh


user = User.create!(username: "ME", email: "EMAIL")
user = User.create!(username: "M", email: "EWGKFDP")

comment = Comment.create!(content: "CONTENNNT")
the = Comment.create!(content: "The")
person = Comment.create!(content: "Person")

user.comments << comment
user.comments << the
