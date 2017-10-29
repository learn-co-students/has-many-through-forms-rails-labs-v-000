Post.destroy_all
Category.destroy_all
PostCategory.destroy_all
User.destroy_all
Comment.destroy_all


kevin = User.create(username: "kevikim33", email: "kevin.kim@colorado.edu")
george = User.create(username: "artvandelay", email: "vandelay@latex.com")

rando = Post.create(title: "Random Thoughts", content: "Today I woke up to a bad dream I can't quite remember")
mulan = Post.create(title: "Reflections", content: "Who is that girl I see staring back right at me?")

refl = Category.create(name: "reflective")
sad = Category.create(name: "sad")
angsty = Category.create(name: "angsty")

PostCategory.create(post: rando, category: refl) #random thoughts files under reflective
PostCategory.create(post: rando, category: sad) #random thoughts files under sad
PostCategory.create(post: mulan, category: refl) #reflections files under reflective
PostCategory.create(post: mulan, category: angsty) #random thoughts files under angsty

Comment.create(content: "I find it helpful to fall asleep to ocean noises", user: kevin, post: rando)
# kevikim comments to "Random Thoughts of his sleep tricks"
Comment.create(content: "Dreams, I had one of those back in the day.", user: george, post: rando)
#george comments to the random thoughts
Comment.create(content: "Isn't this the lyrics to mulan?", user: kevin, post: mulan)
# kevikim comments to mulan post
Comment.create(content: "Ya had to jump on the plane didn't you??", user: george, post: mulan)

Comment.create(content: "Oh, I forgot, I also take melatonin.", user: kevin, post: rando)
