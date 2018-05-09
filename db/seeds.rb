# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.new(title: "How to be single")
Post.new(title: "Should I get Chipotle for Dinner?")
Category.new(name: "Love")
Category.new(name: "Money")
Category.new(name: "Cocktails")
