# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.create(name: 'Cool')
Category.create(name: 'Hot')
Category.create(name: 'Mild')
Category.create(name: 'Warm')

Post.create(title: "Title 1", content: "This is my content")
Post.create(title: "Title 2", content: "Test Test Test Test")
