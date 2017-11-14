Post.destroy_all
Comment.destroy_all
User.destroy_all
Category.destroy_all

meredith = User.create({username: "MeredithGrey", email: "meredith@email.com"})
hawkeye = User.create({username: "HawkeyePierce", email: "hawkeye@email.com"})
leonard = User.create({username: "BonesMcCoy", email: "bones@email.com"})
phillip = User.create({username: "PhillipChandler", email: "phillip@email.com"})
michaela = User.create({username: "MichaelaQuinn", email: "michaela@email.com"})

post1 = Post.create({title: "Title1", content: "content1"})
post2 = Post.create({title: "Title2", content: "content2"})
post3 = Post.create({title: "Title3", content: "content3"})
post4 = Post.create({title: "Title4", content: "content4"})
post5 = Post.create({title: "Title5", content: "content5"})

Comment.create([
  {content: "comment1", post_id: post1.id, user_id: hawkeye.id},
  {content: "comment2", post_id: post1.id, user_id: meredith.id},
  {content: "comment3", post_id: post2.id, user_id: michaela.id},
  {content: "comment4", post_id: post3.id, user_id: phillip.id},
  {content: "comment5", post_id: post4.id, user_id: leonard.id},
  {content: "comment6", post_id: post5.id, user_id: hawkeye.id},
  {content: "comment7", post_id: post3.id, user_id: meredith.id}
])

Category.create([
    {name: "category1"},
    {name: "category2"},
    {name: "category3"},
    {name: "category4"},
    {name: "category5"}
])