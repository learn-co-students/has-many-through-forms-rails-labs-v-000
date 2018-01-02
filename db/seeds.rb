# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(username: 'hdanziger', email: 'hdanziger8@gmail.com')
Post.create(title: 'Hi', content: 'Hello')
Comment.create(content: "Good Morning", user_id: 1, post_id: 1)