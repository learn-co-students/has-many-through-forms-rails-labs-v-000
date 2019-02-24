# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

kazumi = User.create(username: 'Kazumi', email: 'kazkaz@gmail.com')
john = User.create(username: 'John', email: 'jbjb@gmail.com')

funny = Category.create(name: 'Funny')
weird = Category.create(name: 'Weird')
serious = Category.create(name: 'Serious')


