# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.create([{name: 'Fiction'}, {name: 'Non-Fiction'}, {name: 'Jes'}])
users = User.create([{username: "bladezz"}, {username: "Codex"}, {username: "Vork"}, {username: "Zaboo"}, {username: "Tink"}, { username: "Wiggly" }])
