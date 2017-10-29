Post.destroy_all
Category.destroy_all
PostCategory.destroy_all
User.destroy_all
Comment.destroy_all


User.create(username: "kevikim33", email: "kevin.kim@colorado.edu")
User.create(username: "artvandelay", email: "vandelay@latex.com")

Post.create(title: "Random Thoughts", content: "Today I woke up to a bad dream I can't quite remember")
Post.create(title: "Reflections", content: "Who is that girl I see staring back right at me?")

Category.create(name: "reflective")
Category.create(name: "sad")
Category.create(name: "angsty")

PostCategory.create(post_id: 1, category_id: 1) #random thoughts files under reflective
PostCategory.create(post_id: 1, category_id: 2) #random thoughts files under sad
PostCategory.create(post_id: 2, category_id: 1) #reflections files under reflective
PostCategory.create(post_id: 2, category_id: 3) #random thoughts files under angsty

Comment.create(content: "I find it helpful to fall asleep to ocean noises", user_id: 1, post_id: 1)
# kevikim comments to "Random Thoughts of his sleep tricks"
Comment.create(content: "Dreams, I had one of those back in the day.", user_id: 2, post_id: 1)
#george comments to the random thoughts
Comment.create(content: "Isn't this the lyrics to mulan?", user_id: 1, post_id: 2)
# kevikim comments to mulan post
Comment.create(content: "Ya had to jump on the plane didn't you??", user_id: 2, post_id: 2)
