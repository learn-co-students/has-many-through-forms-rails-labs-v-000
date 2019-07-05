# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
c1 = Category.create(:name => "Sports")
c2 = Category.create(:name => "Food")

u1 = User.create(:username => "JoeJock")
u2 = User.create(:username => "CindyChef")

p1 = Post.create(:title => "All Star", :content => "About All Star games")
p2 = Post.create(:title => "Breakfast", :content => "About pancakes")

PostCategory.create(:post => p1, :category => c1)
PostCategory.create(:post => p2, :category => c2)

Comment.create(:user => u1, :post => p1, :content => "What sport?")
Comment.create(:user => u2, :post => p2, :content => "What about eggs?")
Comment.create(:user => u2, :post => p2, :content => "What about coffee?")
Comment.create(:user => u2, :post => p1, :content => "Is there food?")
