@category = Category.create(name: "Cool")
@post = Post.create(title: "So Awesome", content: "Man am I a great blogger OR WHAT!")
@post.categories << @category
@post.save
@user = User.create(username: 'RealBigFish')
@user.save
@comment1 = Comment.create(content: "This was great!", user: @user, post: @post)
@comment1.save
@comment2 = Comment.create(content: "And another thing, how come there aren't any vegetabls at the movie theater...", user: @user, post: @post)
@comment2.save
