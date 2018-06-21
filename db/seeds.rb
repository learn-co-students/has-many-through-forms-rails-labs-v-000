#This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#  .create(name: 'Emanuel', city: cities.first)
Post.create(title: 'Whats New.', content:'well, not really anything...')
Post.create(title: 'My Opinion', content: "All that really matters is my opnion and not yours. Thats all.")
Post.create(title: "Why people drive slow.", content: "Honestly, old people drive so slow it drives me crazy sometimes.")
Post.create(title: "Global Warming in a Nutshell.", content: "It gets really hot in the summer, but then again it gets really cold in the winter?")
Post.create(title: "Elvis Presley is alive and well.", content: "I saw him in Las Vegas just last week : )")
Post.create(title: "Slow and Steady Wins the Race.", content: "But its so dang boring going slow. Who goes slow anyway?")

User.create(username:"boycej", email: "boyce@comcast.net")
User.create(username: "jackhammer", email: "jacknjill@hotmail.com")
User.create(username: "gojoe", email: "capnamerica@rocketmail.com")
User.create(username: "misslou", email:"missyme@google.com")

Comment.create(content: "this post sucks", user_id: 1, post_id: 1)
Comment.create(content: "Nice Post", user_id:2, post_id:2)
Comment.create(content: "Youre so dumb", user_id: 13, post_id: 3)
Comment.create(content: "Why are we having this discussion?", user_id: 4, post_id: 4)
Comment.create(content: "I don't agree at all.", user_id:4, post_id: 5)
Comment.create(content: "Is anybody here?", user_id:3, post_id:6)
Comment.create(content: "Im looking for work.", user_id: 2,post_id: 2)
