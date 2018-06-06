# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
# cat1 = Category.create!(name: "Funny")
# cat1.posts.create!(title: "What I did last summer", content: "Here is content1")
# cat1.posts.create!(title: "What you did last year", content: "Here is content1")
#
# cat2 = Category.create!(name: "Cool")
# cat2.posts.create!(title: "What I did last summer", content: "Here is content1")
# cat2.posts.create!(title: "What you did last year", content: "Here is content1")
# cat2.posts.create!(title: "What we did in the Hamptons", content: "Here is content1")
#
# cat3 = Category.create!(name: "Work")
# cat3.posts.create!(title: "Why I need a new job", content: "Here is content1")
#
# comment1 = Comment.create!(content: "I thought this was not very good")
# comment2 = Comment.create!(content: "Nice Job")
# comment3 = Comment.create!(content: "You should try it this way")
# comment4 = Comment.create!(content: "Sweet bra!")
# comment5 = Comment.create!(content: "You should try the Carribean")
# comment6 = Comment.create!(content: "try going to this site instead")
# comment7 = Comment.create!(content: "Cool!")
#
# post1 = Post.create!(title: "What I did last summer", content: "Here is content1")
# post2 = Post.create!(title: "What you did last year", content: "Here is content1")
# post3 = Post.create!(title: "What we did in the Hamptons", content: "Here is content1")
# post4 = Post.create!(title: "Why I need a new job", content: "Here is content1")
#
# post1.comments.create!(content: "I thought this was not very good")
# post2.comments.create!(content: "Nice Job")
# post2.comments.create!(content: "You should try the Carribean")
# post2.comments.create!(content: "Cool!")
# post3.comments.create!(content: "try going to this site instead")
# post3.comments.create!(content: "You should try it this way")
# post3.comments.create!(content: "I thought this was not very good")
# post4.comments.create!(content: "I thought this was not very good")
# post4.comments.create!(content: "Nice Job")
#
#
# post1.users.create!(username: "ThisBlows", email: "cshie@amkor.com")
# post2.users.create!(username: "YourBoss45", email: "cshiexkdd@amkor.com")
# post3.users.create!(username: "Happydyzz", email: "cskdkd@gmailr.com")

User.create(username: "Big Man", email: "spqr23@rome.mil.it")
User.create(username: "Nautius Maximus", email: "spqr613@rome.mil.it")
User.create(username: "Pontius Pilate", email: "judea@rome.gov.it")
User.create(username: "Brian Cohen", email: "someguy@mako.il")

Post.create(title: "Prima Notica", content: "This is my first notice to the world")
Comment.create(content: "I don't care", user_id: 1, post_id: 1)
Comment.create(content: "I care very much", user_id: 3, post_id: 1)
Comment.create(content: "Why are you here", user_id: 4, post_id: 1)

Post.create(title: "Prima Secunda", content: "Can anybody read my post")
Post.create(title: "Talisin", content: "Tanan Rabanan hada pesgama lisa sayib")
Post.create(title: "Chatere", content: "Ya yesho ne snaiyo nechevo necogda")
Post.create(title: "Lobster Tail", content: "Just boil it")
Comment.create(content: "You need butter", user_id: 2, post_id: 4)
Comment.create(content: "This is very cruel", user_id: 1, post_id: 4)
Comment.create(content: "no it's not...lobsters can't feel pain", user_id: 1, post_id: 4)

Post.create(title: "Court Trial", content: "Is there anybody by that name in the legion?")
Comment.create(content: "I believe it's a joke name sir", user_id: 4, post_id: 5)

Post.create(title: "Green Acres", content: "Has anybody see a talking horse around here?")
Comment.create(content: "He's in the barn", user_id: 2, post_id: 7)
Comment.create(content: "Ask Arnold", user_id: 3, post_id: 7)

Category.create(name: "Nonsense")
Category.create(name: "Cooking")
Category.create(name: "History")
Category.create(name: "Sillyness")
Category.create(name: "Whatever")
Category.create(name: "Non-Fiction")
Category.create(name: "Fiction")
Category.create(name: "Novella")

PostCategory.create(post_id: 1, category_id: 1)
PostCategory.create(post_id: 1, category_id: 4)
PostCategory.create(post_id: 1, category_id: 8)
PostCategory.create(post_id: 2, category_id: 1)
PostCategory.create(post_id: 2, category_id: 3)
PostCategory.create(post_id: 3, category_id: 3)
PostCategory.create(post_id: 4, category_id: 1)
PostCategory.create(post_id: 5, category_id: 2)
PostCategory.create(post_id: 5, category_id: 5)
PostCategory.create(post_id: 5, category_id: 8)
PostCategory.create(post_id: 6, category_id: 4)
PostCategory.create(post_id: 7, category_id: 4)
PostCategory.create(post_id: 7, category_id: 5)
PostCategory.create(post_id: 7, category_id: 6)
PostCategory.create(post_id: 7, category_id: 8)
