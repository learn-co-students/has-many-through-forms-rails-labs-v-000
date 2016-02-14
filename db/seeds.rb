# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.destroy_all
Category.destroy_all
PostCategory.destroy_all

Category.create([
  {name: "Category 1"},
  {name: "Category 2"}
])

Post.create([
  {title: "Post 1", content: "Content BBB Post 1"},
  {title: "Post 2", content: "Content AAA Post 2"},
  {title: "Post 3", content: "Content DDD Post 3"},
  {title: "Post 4", content: "Content ZZZ Post 4"}
])

PostCategory.create([
  {post_id: 1,category_id: 1},
  {post_id: 2,category_id: 2},
  {post_id: 3,category_id: 1},
  {post_id: 4,category_id: 2},
  {post_id: 4,category_id: 1},
  {post_id: 1,category_id: 2}
])