# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Category.destroy_all
PostCategory.destroy_all
Post.destroy_all
Comment.destroy_all

meredith = User.create({username: "Meredith Grey", email: "meredith@email.com"})
hawkeye = User.create({username: "Hawkeye Pierceey", email: "hpierceey@email.com"})
leonard = User.create({username: "Leonard 'Bones' McCoyMeredith Grey", email: "leonard@email.com"})
phillip = User.create({username: "Phillip Chandler", email: "phillipC@email.com"})

cat1 = Category.create({name: "Summer Fun"})
cat2 = Category.create({name: "Super Cute"})
cat3 = Category.create({name: "Gastronomic"})

post1 = cat1.posts.create({title: "Deep sea diving", content: "Deep sea diving taking on the world. Check it out, best destinations..."})
post2 = cat3.posts.create({title: "Fig Salad", content: "Tuscan fig salad, delicious, pairs well with Riesling"})
post3 = cat2.posts.create({title: "Cutest fur babies", content: "Discover the cutest fur babies in the Amazon forest."})
post4 = cat1.posts.create({title: "Icecream Breakthrough", content: "B&J released latest flavor galore icecream!"})
post5 = cat1.posts.create({title: "Swim Lessons for kids", content: "Best summer activities, sign your child up for swimming lessons."})

com1 = meredith.comments.create({content: "Amazing, something i'd try this session.", post_id: post1.id})
com2 = phillip.comments.create({content: "Just missing some baby arugula and it'd be perfection!", post_id: post2.id})
com3 = hawkeye.comments.create({content: "The Greek islands is the place to be!", post_id: post1.id})
com4 = phillip.comments.create({content: "Check out my baby dog, cutest fur baby around the hood", post_id: post3.id})
com5 = meredith.comments.create({content: "Santorini?", post_id: post1.id})
