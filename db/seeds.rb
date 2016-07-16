# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
@category = Category.create(name: "Fiction")
@post = Post.create(title: "My First Post!")
@post_categories = PostCategory.create(category_id: 1, post_id: 1)
