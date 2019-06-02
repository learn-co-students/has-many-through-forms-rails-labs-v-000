# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.create(title: "Post 1", content: "This is the content for Post 1.")
Post.create(title: "Post 2", content: "This is the content for Post 2.")
Post.create(title: "Post 3", content: "This is the content for Post 3.")
Post.create(title: "Post 4", content: "This is the content for Post 4.")
Category.create(name: "Awesome")
Category.create(name: "Cool")
Category.create(name: "Neat")
PostCategory.create(post_id: 1, category_id: 2)
PostCategory.create(post_id: 2, category_id: 1)
PostCategory.create(post_id: 3, category_id: 3)
PostCategory.create(post_id: 4, category_id: 1)
User.create(username: "Sean", email: "sean@psych.com")
User.create(username: "Gus", email: "gus@psych.com")
User.create(username: "Henry", email: "henry@psych.com")
Comment.create(content: "I like post 1.", user_id: 3, post_id: 1)
Comment.create(content: "Post 1 is okay.", user_id: 2, post_id: 1)
Comment.create(content: "Post 2 is the best", user_id: 1, post_id: 2)
Comment.create(content: "My favorite is post 3.", user_id: 3, post_id: 3)
Comment.create(content: "Post 4 is where it's at.", user_id: 2, post_id: 4)
Comment.create(content: "Post 4 is dope.", user_id: 1, post_id: 4)
