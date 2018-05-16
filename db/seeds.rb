# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
  Category.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
  s = User.create(username: 'Dan' )
  User.create([{ username: 'Chika' }, { username: 'Popo' }])
  User.create([{ username: 'David' }, { username: 'bobo' }])
  Category.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
  Category.create([{ name: 'Love' }, { name: 'Food' }])
  Category.create([{ name: 'NYC' }, { name: 'LA' }])
  Category.create([{ name: 'Lee fam' }, { name: 'Secrets' }])
  Post.create(title: 'Emanuel', content: "Love wins")
  Post.create(title: 'dodo', content: "Love wins")
  Post.create(title: 'They said', content: "Love wins")
  Post.create(title: 'They love this ', content: "Love wins")
  Post.create(title: 'You said', content: "Love wins")

  s.comments << Comment.create([{ content: "I need to go the bathroom!!!"}, { content: "I need throom!!!"}])
