# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

koolkat=User.create(username: "koolkat27", email:"koolkat27@flatiron.org")
awesome_dude=User.create(username: "awesome_dude", email:"awesome_dude@flatiron.org")
avi = User.create(username: "just_avi", email:"avi@flatiron.org")


Category.create(name:"Programming")
Category.create(name:"Design")
Category.create(name:"User Experience (UX)")
Category.create(name:"Meta-Programming")

post = avi.posts.create(title: "My Post about Programming", content:"Programming is fun. Also difficult.", category_ids:[1,4])
post.comments.create(content:"Cool Post!", user_id:2)
post.comments.create(content:"Yeah man!", user_id:1)