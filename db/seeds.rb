# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


meredith = User.create({username: "Meredith Grey", email: "Inmedicine@gmail.com"})
hawkeye = User.create({username: "Hawkeye Pierce", email: "Surgery@gmail.com"})
leonard = User.create({username: "Leonard 'Bones' McCoy", email: "medicine@gmail.com"})
phillip = User.create({username: "Phillip Chandler", email: "internal@gmail.com"})
michaela = User.create({username: "Michaela Quinn", email: "mine@gmail.com"})

blog_1 = Post.create({title: "1st blog", content: "I am blogging for the first time"})
blog_2= Post.create({title: "2nd blog", content: "I love blogging!"})
fav_blog = Post.create({title: "My fav blog", content: "This is the best blog of 2017!"})
new_blog = Post.create({title: "new blog", content: "What do you think about blogging"})
maggie = Post.create({title: "all about Maggie Simpson", content: "These are my thoughts about Maggie Simpson"})


comment_1 = Comment.create({content: "good job"})
comment_2= Comment.create({content: "love it"})
comment_3= Comment.create({content: "Your posts are always so interesting."})
comment_4 = Comment.create({content: "You write so well"})
comment_5 = Comment.create({content: "What an interesting take on Maggie Simpson"})

 science = Category.create({name: "science"})
 movie_review = Category.create({name: "movie_reviews"})
 evolution = Category.create({name: "brats"})
 my_1st_post = Category.create({name: "my 1st post"})
 celebrities = Category.create({name: "celebrities"})
