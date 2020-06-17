# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
new_user = User.create(username: 'jimmy', email: "jimmy@yorke.com")
another_user = User.create(username: "Thom", email: "thom@yorke.com")
new_post = Post.create(title: "Nested forms, let me understand you", content: "Sometimes its best to step away. Sleep.")
not_cool = new_post.categories.build(name: "Ruby on Railsss")
new_post.save

new_comment = new_post.comments.build(content: "agreed!", user: new_user)
new_comment.save

another_comment = new_post.comments.build(content: "My first time on a blog", user: another_user)
another_comment.save
