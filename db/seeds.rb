# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

      @category = Category.create(name: "Awesome")
      @post = Post.create(title: "Pretty neato", content: "What an insightful post I have written!")
      @post.categories << @category
      @user = User.create(username: 'Chewy6000')
      @comment1 = Comment.create(content: "I can dig it!", user: @user, post: @post)