# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.destroy_all
Category.destroy_all
User.destroy_all
Comment.destroy_all

meredith = User.create({username: "Meredith Grey", email: "Meredith@Grey"})
hawkeye = User.create({username: "Hawkeye Pierce", email: "Hawkeye@Pierce"})
leonard = User.create({username: "Leonard 'Bones' McCoy", email: "Leonard@McCoy"})
phillip = User.create({username: "Phillip Chandler", email: "Phillip@Chandler"})
michaela = User.create({username: "Michaela Quinn", email: "Michaela@Quinn"})

drama = Category.create({name: "Drama"})
fiction = Category.create({name: "Fiction"})
non_fiction = Category.create({name: "Non-Fiction"})
comedy = Category.create({name: "Comedy"})
horror = Category.create({name: "Horror"})

Post.create([
  {title: "Some title", content: "text"},
  {title: "Some title", content: "ha ha"},
  {title: "Some title", content: "text text text"},
  {title: "Some title", content: "more content"},
  {title: "Some title", content: "writing a post"},
  {title: "Some title", content: "this is content"},
  {title: "Some title", content: "some content"}
])

PostCategory.create([
  {post_id: 1, category: drama},
  {post_id: 2, category: drama},
  {post_id: 3, category: fiction},
  {post_id: 4, category: horror},
  {post_id: 5, category: comedy},
  {post_id: 6, category: drama},
  {post_id: 7, category: non_fiction},
  {post_id: 2, category: non_fiction}
])

Comment.create([
  {content: "This is a great post", user: leonard, post_id: 1},
  {content: "This is an awesome post", user: leonard, post_id: 2},
  {content: "This post sucks", user: leonard, post_id: 3},
  {content: "Nice!", user: meredith, post_id: 6},
  {content: "Cool", user: phillip, post_id: 2},
  {content: "This is a neat post", user: phillip, post_id: 5},
  {content: "Try again", user: michaela, post_id: 4},
  {content: "Awesome", user: michaela, post_id: 1}
])
