# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

category = Category.create([{:name => "New York"}, {:name => "Boston"}, {:name => "Marblehead"}, {:name => "Justice"}, {:name => "Animals"}, {:name => "Love"}])

user = User.create([{:username => "jacksonj", :email =>  "jacksonj@toronto.com"}, {:username => "Petey", :email =>  "pete@gmail.com"} ])

