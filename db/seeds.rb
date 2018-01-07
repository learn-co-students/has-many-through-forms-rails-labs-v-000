User.create(username: "u1", email: "u1@u1")
User.create(username: "u2", email: "u2@u2")
User.create(username: "u3", email: "u3@u3")
User.create(username: "u4", email: "u4@u4")
User.create(username: "u5", email: "u5@u5")

Post.create(title: "1", content: "cont1")
Post.create(title: "2", content: "cont2")
Post.create(title: "3", content: "cont3")
Post.create(title: "4", content: "cont4")
Post.create(title: "5", content: "cont5")

Category.create(name: "cat 1")
Category.create(name: "cat 2")
Category.create(name: "cat 3")
Category.create(name: "cat 4")
Category.create(name: "cat 5")


Comment.create(content: "cont1", user_id: "1", post_id: "1")
Comment.create(content: "cont2", user_id: "2", post_id: "2")
Comment.create(content: "cont3", user_id: "3", post_id: "3")
Comment.create(content: "cont4", user_id: "4", post_id: "4")
Comment.create(content: "cont5", user_id: "5", post_id: "5")

