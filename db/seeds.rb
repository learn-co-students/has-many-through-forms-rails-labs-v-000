@post = Post.create(title: "Yeezus", content: "I am a god")
@user = User.create(username: 'Kanye')
@comment = @post.comments.build(content: "Yo what up Yeezus", user: @user)
