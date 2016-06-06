# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

3.times do
  @post = Post.create(title: Faker::Book.title, content: Faker::StarWars.quote)
  @post.categories.build(name: Faker::Company.buzzword)
  @user = User.create(username: Faker::Internet.user_name)
  @comment = @post.comments.build(content: Faker::Hipster.sentence, user: @user)
  @post.save
end
