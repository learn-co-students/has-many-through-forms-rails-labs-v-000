# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

post = Post.create!(title: 'My Title', content: 'bla, bla, bla')
category = Category.create!(name: 'cool category')
user = User.create!(username: 'user_bob', email: 'bob@example.com')
comment = Comment.create!(content: 'This is my first comment.', user_id: user.id, post_id: post.id)
post_categorie = PostCategory.create!(post_id: post.id, category_id: category.id)
