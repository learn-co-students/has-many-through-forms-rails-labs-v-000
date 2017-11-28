eric = User.create({username: "Eric", email: "eric@aol.com"})
eric.save


post = Post.create({id: 1, title: "How to work the internets", content: "Sign up for AOL - it's fun! If someone emails you a link.. click on it !"})
post.save


action = Category.new({name: "Action-Packed!"})
action.save

comedy = Category.new({name: "Sooo funny"})
comedy.save


comment = Comment.new({user_id:1, content: "laaammmee"})
comment.save