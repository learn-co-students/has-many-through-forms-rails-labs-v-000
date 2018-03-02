Category.destroy_all
Comment.destroy_all
PostCategory.destroy_all
Post.destroy_all
User.destroy_all

ian = User.create({username: "Ian", email: "ian@yahoo.com"})
joe = User.create({username: "Joe", email: "joe@yahoo.com"})

clickbait = Category.create(name: "Motivation")
post1 = Post.create({title: "10 Ways You Are Already Awesome", content: "Lorem Ipsum Post Content"})
post2 = Post.create({title: "This Yoga Stretch Cures Procrastination, Maybe", content: "Lorem Ipsum Post Content"})

movies = Category.create(name: "Movies")
post3 = Post.create({title: "Top 20 Summer Blockbusters Featuring a Cute Dog", content: "Lorem Ipsum Post Content"})
post4 = Post.create({title: "Top 20 Winter Blockbusters Featuring a Horrible Cat", content: "Lorem Ipsum Post Content"})

PostCategory.create([
  {category_id: clickbait.id, post_id: post1.id},
  {category_id: clickbait.id, post_id: post2.id},
  {category_id: movies.id, post_id: post3.id},
  {category_id: movies.id, post_id: post4.id},
])

comment1 = Comment.create({content: "Lorem Ipsum Comment Content", user_id: ian.id, post_id: post1.id})
comment2 = Comment.create({content: "Lorem Ipsum Comment Content", user_id: ian.id, post_id: post2.id})
comment3 = Comment.create({content: "Lorem Ipsum Comment Content", user_id: ian.id, post_id: post3.id})
comment4 = Comment.create({content: "Lorem Ipsum Comment Content", user_id: ian.id, post_id: post4.id})
comment5 = Comment.create({content: "Lorem Ipsum Comment Content", user_id: joe.id, post_id: post1.id})
comment6 = Comment.create({content: "Lorem Ipsum Comment Content", user_id: joe.id, post_id: post2.id})
comment7 = Comment.create({content: "Lorem Ipsum Comment Content", user_id: joe.id, post_id: post3.id})
comment8 = Comment.create({content: "Lorem Ipsum Comment Content", user_id: joe.id, post_id: post4.id})
