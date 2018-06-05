# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


kim = User.create!(username:"Kim", email: "Test@test.com")
randi = User.create!(username:"Randi", email: "Test1@test.com")
skip = User.create!(username: "Skip", email: "Test2@test.com")
jess = User.create!(username:"Jess", email: "Test3@test.com")

kimsposts = [
    Post.create!(title: "Scary!", content: "post 1content"),
    Post.create!(title: "5 + 5 = 10", content: "post 2content"),
    Post.create!(title: "The Human Brain is awesome", content: "post 3content")
]

kim.posts << kimsposts

suspense = Category.create!(name: "Suspense")
psych = Category.create!(name: "Psychology")
biology = Category.create!(name: "Biology")
math = Category.create!(name: "Math")

post_cat = PostCategory.create!(post_id: 1, category_id: 1)
post_cat2 = PostCategory.create!(post_id: 2, category_id: 4)
post_cat3 = PostCategory.create!(post_id: 3, category_id: 2)

kcomment = Comment.create!(content:"What's that about?", user_id: 1, post_id: 3)
racomment = Comment.create!(content:"I love this book", user_id: 2, post_id: 3)
