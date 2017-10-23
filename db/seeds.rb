# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

greek_wed = Post.create!(title: "My Big Fat Greek Wedding in Spain", content: "wow this wedding was big and fat wow")

weddings = greek_wed.categories.create!(name: "Weddings")
travel = greek_wed.categories.create! (name: "Travel")

wedding_girl = User.create!(:username => "newlywed_393", :email => "sarah_vansant@email.com")


happy_girl = User.create!(:username => "happygirl123", :email=>"happygirl@email.com")

jealous_girl = User.create!(:username => "jealous_girl_456", :email=> "jealous_5_ever@email.com")


greek_wed.comments.create(content: "Wow congrats sarah!", user_id: happy_girl.id)

greek_wed.comments.create(content: "Thanks happygirl!", user_id: wedding_girl.id)

greek_wed.comments.create(content: "HE SHOULD HAVE BEEN MINE!", user_id: jealous_girl.id)

greek_wed.save
