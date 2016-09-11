# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.create(title: "New Post", content: "Post Content")
User.create(username: "imauser", email: "user@me.com")
Category.create([{name: 'Humor'}, {name: 'Cats'}, {name: 'Politics'}])

Post.create(title: "2nd Post", content: "2nd Post Content")
User.create(username: "imanewuser", email: "newuser@me.com")

Comment.create(content: "Comment Content", user_id: User.first, post_id: Post.first)

Comment.create(content: "2nd Comment Content", user_id: User.second, post_id: Post.second)

category = Category.first
post = Post.first
category2 = Category.second
post2 = Post.second

post.categories << category
category.posts << post

post2.categories << category2
category2.posts << post2
