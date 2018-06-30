users = User.create([{ username: 'Bill', email: 'bill@abc.com'}, { username: 'Jane', email: 'jane@doreme.com'}, { username: 'Frank', email: 'frank@wastemanagement.com'}])
posts = Post.create([{ title: "My new bike", content: "It's a big red bike!"},{ title: "Dunkin Donuts", content: "Explore the many sweet donuts."}, { title: "NYC trip", content: "All you can see, do and eat."}])
categories = Category.create([{name: "Tourism"}, {name: "Hobbies"},{name: "Dining"}])
post_categories = PostCategory.create([{post_id: 1, category_id: 1}, {post_id: 1, category_id: 2}, {post_id: 3, category_id: 1}])

comments = Comment.create([
{user_id: 1, post_id: 1, content: 'You are spot on!'}, 
{user_id: 2, post_id: 1, content: 'Not me!'}, 
{user_id: 3, post_id: 1, content: 'Bring me the lobster!'},
{user_id: 1, post_id: 2, content: 'I lost the thread, can you repeat?'}, 
{user_id: 2, post_id: 2, content: 'I like bananas'}, 
{user_id: 3, post_id: 2, content: 'If you hold that button down before opening...'},
{user_id: 1, post_id: 3, content: 'Where did you say you were from?'}, 
{user_id: 2, post_id: 3, content: 'Skiing is fun, but can be scary too.'}, 
{user_id: 3, post_id: 3, content: 'I think I need to leave.'}
  ])