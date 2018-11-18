# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = User.create([{ username: 'britt', email: 'britt@gmail.com' }, { username: 'damir', email: 'damir@gmail.com' }])
categories = Category.create([{ name: 'cool' }, { name: 'fun' }])
posts = Post.create([{ title: 'cool post', content: 'cool post content' }, { title: 'fun post', content: 'fun post content' }])
comments = Comment.create([{ content: 'comment on cool post', user: User.first, post: Post.first }, { content: 'comment on fun post', user: User.last, post: Post.last }])
