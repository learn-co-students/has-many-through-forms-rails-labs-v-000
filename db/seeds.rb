3.times do
   @post = Post.create(title: Faker::Book.title, content: Faker::Hipster.paragraph)
   @post.categories.build(name: Faker::Pokemon.name)
   @user = User.create(username: Faker::Internet.user_name)
   @comment = @post.comments.build(content: Faker::Lorem.sentence, user: @user)
   @post.save
 end
