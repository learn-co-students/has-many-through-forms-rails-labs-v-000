# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

post1 = Post.create(title: "nice post")
post2 = Post.create(title: "great post")

comment1 = Comment.create(content: "blah blah")
comment2 = Comment.create(content: "Wise man")

category1 = Category.create(name: "scinece")
category2 = Category.create(name: "spelling")


user1 = User.create(username: "tom")
user2 = User.create(username: "rob")
