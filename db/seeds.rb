# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = User.create([
  { username: 'callmejam'},
  { username: 'iamcardib'},
  { username: 'tiffanyhaddish'}
  ])

posts = Post.create([
  { title: "My Name is Jam", content: "This is just a test!"},
  { title: "Bodak Yellow", content: "My baby's name is Kulture."},
  { title: "Black Unicorn", content: "Go see Night School!"}
  ])

jam = User.find_by(username: "callmejam")
cardi = User.find_by(username: "iamcardib")
tiffany = User.find_by(username: "tiffanyhaddish")

jam_comments = Comment.create([
  {content: "Love your new song!"},
  {content: "Read your book and loved it!"},
  ])

jam.comments << jam_comments
posts[1].comments << jam_comments.first
posts[2].comments << jam_comments[1]

cardi_comments = Comment.create([
  {content: "skrrrrrrt"},
  {content: "I like it like that!"}
  ])

cardi.comments << cardi_comments
posts.first.comments << cardi_comments.first
posts[2].comments << cardi_comments[1]
