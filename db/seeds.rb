# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

new_comment = Comment.create(content: "This is a new comment.")
second_comment = Comment.create(content: "This another comment.")

new_user = User.create(username: "JohnMichael")
new_user = User.create(username: "Hal")
