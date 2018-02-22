# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
@category = Category.create(name: "Cool Stuff")
@post = Post.create(title: "Feeling It", content: "I'm feeling it")
@post.categories << @category
@user = User.create(username: 'Marina')
@comment = @post.comments.build(content: "Alright Post!", user: @user)
@post.save

@category = Category.create(name: "Class")
@post = Post.create(title: "So Amazing", content: "This post is the post!")
@post.categories << @category
@user = User.create(username: 'Flat')
@comment1 = Comment.create(content: "This was great!", user: @user, post: @post)
@post.save

@category = Category.create(name: "Wow")
@post = Post.create(title: "Wowowow", content: "All about dogs")
@user = User.create(username: 'Dogg')
@post.categories << @category
@user = User.create(username: 'Botya')
@comment1 = Comment.create(content: "Completely agree!", user: @user, post: @post)
@post.save
