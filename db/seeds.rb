# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(username: "steve", email: "steve@e.com")
User.create(username: "mike", email: "mike@e.com")
User.create(username: "jane", email: "jane@e.com")

Category.create(name: "political")
Category.create(name: "entertainment")
Category.create(name: "sports")
Category.create(name: "music")
