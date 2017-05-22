# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Post.destroy_all
Comment.destroy_all
Category.destroy_all

groovy = Post.create({title: "Feeling Groovy", content: "I'm feeling so groovy"})
songs = Post.create({title: "Drinking Songs", content: "rock"})

coolguy = User.create({username: 'CoolGuy5'})
katie = User.create({username: 'KatiePear'})

travel = Category.create({name: "travel"})
music = Category.create({name: "music"})
world_events = Category.create({name: "world events"})