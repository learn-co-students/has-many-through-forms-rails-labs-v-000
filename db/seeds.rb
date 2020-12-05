# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.create(title: "Blade Runner 2049 will suck", content: "...Because it will!")
User.create(username: "efrainperezjr", email: "jinstrider2000@hotmail.com")
Comment.create(content: "You're wrong, it'll rock!!!", user_id: 1, post_id: 1)