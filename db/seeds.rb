# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(username: 'zak', email: 'zlehmann@gmail.com')
User.create(username: 'bellamy', email: 'bgrindl@gmail.com')
Post.create(title: 'first post', content: "this is my first post ever")
