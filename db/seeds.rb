# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(username: "Username1")
User.create(username: "Username2")
User.create(username: "Username3")
Category.create(name: "Cool")
Category.create(name: "Fun")
Category.create(name: "Sweet")
Post.create(title: "Test1", content: "Lorem Ipsum", category_ids: [1,2,3])
Post.create(title: "Test2", content: "Lorem Ipsum", category_ids: [1,2])
Post.create(title: "Test3", content: "Lorem Ipsum", category_ids: [2,3])
Comment.create(content: "Meh", user_id: 1, post_id: 3)
Comment.create(content: "Meh", user_id: 2, post_id: 2)
Comment.create(content: "Meh", user_id: 3, post_id: 1)
