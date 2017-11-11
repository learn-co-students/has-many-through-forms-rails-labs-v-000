# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
cat_1 = Category.create(name: "jokes")
cat_2 = Category.create(name: "sadness")
cat_3 = Category.create(name: "anger")
cat_4 = Category.create(name: "life")

user_1 = User.create(username: "jack")
user_2 = User.create(username: "john")
user_3 = User.create(username: "jason")
user_4 = User.create(username: "james")