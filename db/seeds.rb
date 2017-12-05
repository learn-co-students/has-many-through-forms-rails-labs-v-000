# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = User.create([
  {username: 'CoolGuy5'},
  {username: 'ArfNarf'},
  {username: 'damnit182'},
  {username: 'soulddoubt'}
   ])

posts = Post.create([
  {title: "Feeling Groovy", content: "I'm feeling so groovy"},
  {title: "Cats for days", content: "Yo Griff, Bring in the cats!"},
  {title: "No Dogs Allowed", content: "Obviously"},
  {title: "Gossip Girl is a Good Show", content: "Don't @ me"}
])
  
categories = Category.create([
    {name: "Non-Fiction"},
    {name: "Cool"},
    {name: "Pro-Cat"},
    {name: "Dumb"}
  ])


