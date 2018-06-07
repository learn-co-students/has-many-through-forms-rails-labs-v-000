# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
@category = Category.create(name: "Rails")
@post = Post.create(title: "Debugging", content: "Load up rails c to start the console!")
@post.categories << @category
@user = User.create(username: 'Rubist')
@comment1 = Comment.create(content: "So Helpful!", user: @user, post: @post)
