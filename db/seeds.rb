# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
category1 = Category.create(name: "Cool")
category2 = Category.create(name: "Neat")
category3 = Category.create(name: "Awesome")

post1 = Post.create(title: "So Awesome", content: "Man am I a great blogger OR WHAT!")
post2 = Post.create(title: "Pretty cool", content: "The dude abides")
post3 = Post.create(title: "I like to eat apples and bananas", content: "They are delicious")

post1.categories << category1
post1.categories << category2
post2.categories << category2
post2.categories << category3
post3.categories << category1

user1 = User.create(username: 'Scott')
user2 = User.create(username: 'Layne')

comment1 = Comment.create(content: "This was great!", user: user1, post: post1)
comment2 = Comment.create(content: "This dude does not abide", user: user1, post: post2)
comment3 = Comment.create(content: "Cool, cool, cool, cool", user: user2, post: post1)
