# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(name:"Food")
Category.create(name:"Cute Animals")
Category.create(name:"Travel")

User.create(username: "fred")
User.create(username: "bob")
User.create(username: "zaney")