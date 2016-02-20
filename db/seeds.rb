# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

book = Category.create(name: "book")
tech = Category.create(name: "tech")
music = Category.create(name: "music")

user1 = User.create(username: "one")
user2 = User.create(username: "two")
user3 = User.create(username: "three")
