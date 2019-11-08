# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Post.create(title: "Hey there", content: "Whatnot and have you tried this?")
Post.create(title: "Whenver I Look at You", content: "How is it that everyone always wants turkey for dinner?")

User.create(username: "jkl", email: "htjk@hotmail.com")
User.create(username: "laksjdlkfjsd", email: "lkajsdlfkj@hotmail.com")

Category.create(name: "Nosy")
Category.create(name: "Cute")
Category.create(name: "Interpretive")
Category.create(name: "Hot")


