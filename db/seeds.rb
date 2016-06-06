# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

dave = User.create(:username => "Dave", :email => "dave@dave.com")
davepost = Post.create(:title => "First Post", :content => "Hi, I'm Dave.  This is my first post!")
intro = Category.create(:name => "Intro")
davepost.categories << intro

