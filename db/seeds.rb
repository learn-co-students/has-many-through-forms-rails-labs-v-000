# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(username: "Biggus Dickus", email: "spqr23@rome.mil.it")
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
