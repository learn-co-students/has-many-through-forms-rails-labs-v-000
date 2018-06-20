# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
categories = [
    "Cool",
    "Cute",
    "EPIC FAIL",
    "Funny",
    "Hot",
    "Trending"
]

categories.each do |cat|
    Category.find_or_create_by(name: cat)
end

users = [
    "Andrea",
    "ExcellentPoster23",
    "Rob",
    "WichitaStan"
]

users.each do |user|
    User.find_or_create_by(username: user)
end

@post = Post.find_or_create_by(title: "Feeling Groovy", content: "I'm feeling so groovy")
@user = User.find_or_create_by(username: 'CoolGuy5')
@comment = @post.comments.build(content: "Great Post!", user: @user)
@post.save