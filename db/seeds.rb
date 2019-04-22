# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = [
  {username: "Emily", email: "emily@example.org"},
  {username: "Felix", email: "felix@example.org"},
  {username: "Zoe", email: "zoe@example.org"}
]

users.each do |x|
  User.create(x)
end

posts = [
  {title: "My post title from seeds", content: "My post title from seeds"},
  {title: "My second post title from seeds", content: "My second post title from seeds"}
]

posts.each do |x|
  Post.create(x)
end

comments = [
  {user_id: "1", post_id: "1", content: "My first comment content"},
  {user_id: "2", post_id: "1", content: "My second comment content"}
]

comments.each do |x|
  Comment.create(x)
end

categories = [
  {name: "Good"},
  {name: "Great"}
]

categories.each do |x|
   Category.create(x)
end