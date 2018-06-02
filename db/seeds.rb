# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

next_post = Post.create(title: "KrazyTown", content: "I live in KTown")

next_post.next_comment = Comment.create(content: "This is a new comment.")
# second_comment = Comment.create(content: "This another comment.")

next_comment.next_user = User.create(username: "Jack")
# new_user = User.create(username: "Hal")


