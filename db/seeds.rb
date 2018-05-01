# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.create(title: "The Greatest", content: "The greatest post ever that wasn't written!")
Category.create(name: "Good Soup!!")
PostCategory.create(post_id: 1, category_id: 1)
User.create(username: "Gru", email: "gru@despicable.me")
Comment.create(content: "Something you won't understand", user_id: 1, post_id: 1)
