# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
@cool = Category.create(name: 'Cool')

@post_1 = Post.create(title: 'Feeling Awesome', content: 'This is going to be an awesome post!')
@user_1 = User.create(username: 'RealBigFish')
@comment = Comment.create(content: 'great post!', user: @user_1, post: @post_1)

@post_1.categories << @cool

@post_1.comments.build(content: 'second comment')
@post_1.save
