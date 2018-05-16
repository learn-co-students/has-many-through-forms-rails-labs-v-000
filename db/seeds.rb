# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
a = Post.create(title: "How to be single")
b = Post.create(title: "Should I get Chipotle for Dinner?")
p = Post.create(title: "Old Fashioned gets a Facelift")
love = Category.create(name: "Love")
money = Category.create(name: "Money")
cocktails = Category.create(name: "Cocktails")
aubs = User.new(username: "aubs")
p.comments(user_id: 1, content: "Test comment by aubs")
p.categories << cocktails
a.categories << love
b.categories << money
