# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Category.create(:name => "funny")
Category.create(:name => "serious")
Category.create(:name => "sad")

@category = Category.create(name: "Cool")
@post = Post.create(title: "So Awesome", content: "Man am I a great blogger OR WHAT!")
@post.categories << @category
@user = User.create(username: 'RealBigFish')
Comment.create(content: "This was great!", user: @user, post: @post)
Comment.create(content: "This was super great, again!", user: @user, post: @post)


@category = Category.create(name: "Not cool")
@post = Post.create(title: "Not so Awesome", content: "Man am I a poor blogger OR WHAT!")
@post.categories << @category
Comment.create(content: "This was kind of lame!", user: @user, post: @post)
Comment.create(content: "This was super lame, again!", user: @user, post: @post)