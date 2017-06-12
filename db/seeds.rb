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

post1 = Post.create({title: "Post1", content: "content1"}) #54
post2 = Post.create({title: "Post2", content: "content2"}) #55
post3 = Post.create({title: "Post3", content: "content3"}) #56
post4 = Post.create({title: "Post4", content: "content4"}) #57

category1 = Category.create({name: "category1"}) #62
category2 = Category.create({name: "category2"}) #63
category3 = Category.create({name: "category3"}) #64
category4 = Category.create({name: "category4"}) #65

user1 = User.create({username: "name1", email: "email1"}) #57
user2 = User.create({username: "name2", email: "email2"}) #58
user3 = User.create({username: "name3", email: "email3"}) #59
user4 = User.create({username: "name4", email: "email4"}) #60


comment1 = Comment.create({content: "content1", user_id:111, post_id:84})
comment2 = Comment.create({content: "content2", user_id:112, post_id:84})
comment3 = Comment.create({content: "content3", user_id:112, post_id:85})
comment4 = Comment.create({content: "content4", user_id:111, post_id:85})
comment5 = Comment.create({content: "content5", user_id:113, post_id:86})


p_cat1 = PostCategory.create({post_id:54, category_id: 62})
p_cat2 = PostCategory.create({post_id:54, category_id: 63})
p_cat3 = PostCategory.create({post_id:55, category_id: 62})
p_cat3 = PostCategory.create({post_id:55, category_id: 64})
p_cat3 = PostCategory.create({post_id:56, category_id: 64})


