user_1 = User.create(username: "Bob")
user_2 = User.create(username: "Sandra")
user_3 = User.create(username: "Jo")


category_1 = Category.create(name: "funny")
category_2 = Category.create(name: "sad")
category_3 = Category.create(name: "happy")


comment_1 = Comment.new(content: "This is the best post I've ever read")
comment_1.user_id = 1
comment_1.save

comment_2 = Comment.new(content: "What a horrible piece of writing!")
comment_2.user_id = 3
comment_2.save

comment_3 = Comment.new(content: "Yum Yum Yum Yum!")
comment_3.user_id = 2
comment_3.save


post_1 = Post.new(title: "Muffins Are Yummy", content: "muffins muffins muffins muffins muffins muffins muffins")
post_1.categories << category_1 << category_2 << category_3
post_1.comments << comment_3
post_1.save

post_2 = Post.new(title: "I Like Ice Cream", content: "ice cream ice cream ice cream ice cream ice cream ice cream ice cream!")
post_2.categories << category_1 << category_3
post_2.comments << comment_1
post_2.save

post_3 = Post.new(title: "Chocolate Chocolate Chocolate", content: "chocolate is the greatest of all the things chocolate is the greatest of all the things chocolate is the greatest of all the things chocolate is the greatest of all the things")
post_3.categories << category_3
post_3.comments << comment_2
post_3.save
