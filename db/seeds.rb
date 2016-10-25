# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


users = User.create([{ username: 'Bill'}, { username: 'Jane'}, { username: 'Frank'}, ])
posts = Post.create([{ title: "My new bike", content: "It's a big red bike!"},{ title: "Dunkin Donuts", content: "Explore the many sweet donuts."}, { title: "NYC trip", content: "All you can see, do and eat."}])
categories = Category.create([{name: "Tourism"}, {name: "Hobbies"},{name: "Dining"}])
post_categories = PostCategory.create([{post_id: 1, category_id: 1}, {post_id: 1, category_id: 2}, {post_id: 3, category_id: 1}])