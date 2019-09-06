# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Comment.create(user_id: 4, post_id: 2, content: "Cool test post!")
Comment.create(user_id: 5, post_id: 3, content: "Another cool post.")
