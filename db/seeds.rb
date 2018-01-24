# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

post1 = Post.create(title: "So Awesome", content: "Man am I a great blogger OR WHAT!")
User.create(username: 'RealBigFish')
post1.categories.build(name: "cute")
Comment.create(content: "This was great!", user_id: 1, post_id: 1)
