# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
post = Post.new({:title => "hey there", :content => "blah blah blah"})
post.save
category = Category.new({:name => "happy"})
comment = Comment.new({:content => "some content"})
comment1 = Comment.new({:content => "bobbys world! love the post"})
comment2 = Comment.new({:content => "stan loves this post more again"})
user = User.new({:username => "stan smith", :email => "stan@stansworld.com"})
user1 = User.new({:username => "bobby jones", :email => "bobby@stansworld.com"})
user.save
user1.save
user.comments << comment
user1.comments << comment1
user.comments << comment2
user.posts << post
post.categories << category
post.comments << comment
post.comments << comment1
post.comments << comment2
post.save
