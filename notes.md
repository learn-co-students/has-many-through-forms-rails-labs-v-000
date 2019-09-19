notes.md


REqs
 1. post have many cats/cats have many posts
 2. post nested form with smart non duplicative categories
 3. posts have many comments 
 4. comment belongs to a user
 5. on the post show page, need a comment form with dropdown for users and text-field for comments. 
 6. create users show page that links to all posts a user has commented on. 
 7. some validation process, blank option for collections_select 


Process: so much about programming is about process. 
post.spec
categories.spec
comments.spec
users.spec 

post model
cat model
posts controller
posts new 

rails generate resource post title content:text 


1. Create form posts#new
	-- checkboxes  to selectg categories 
	-- and text field to create a new category 
	-- nested form 
	-- if exists, don't create new  ie, unique category. 
		-- smart, non-duplicative 

Posts have many categoies, cats have many posts, so you need a join model and a through. it can't be post.category_id, because it would only have one post. Has many through. 

	-- posts have many categories.  

2. posts#show 
	--displays title and content
	-- all comments 
	-- a list of unique users who have commented 
	-- each user only is listed once 
	-- form to add a new comment
		-- should have a dropdown menu to select a user 
		-- plus create a new user and auto-associate that user with the post 

3. users#show 
	-- links to all the posts a user has commented on 

4. categories#show -- links to all the posts in a given category. 


Hints ANAF -- reject_if 
user select box -- needs a blank obtion -- check of include_blank option for collection_select. 

?? collection_select(:post, :author_id, Author.all, :id, :name_with_initial, prompt: true)




	<%# @post.comments.each do |comment| %>
		<%#= comment.content %>
		<%#= link_to users_path(comment.username), comment.username.size  %> 
<%# end %>
	<label for="category_id">
		<input type="checkbox" name="?" value="1">


passing a hash to create -- what needs to be in it? 

post[title] =? title to fthe post 
[:title => "Title", :category_ids =? {1,2,3}]

look at strong params: 
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])

<%= link_to "Delete", category, method: :delete, data: { confirm: "Really?" } %>


<!-- refactoring: collection_check_boxes(:post, :author_ids, Author.all, id, ) -->
<!-- f.select --skip the first argument-:post) 
 -->


<!-- will genereate a chckboxe named post[category_ids]
it will use the :id as the value for the checkbox, and will use the :name method as the label for the checkbox. 
 -->
<!--  
<% Category.all.each do |c| %>
	<p> 
	<label for="category_id <%= c.id %>"><%= c.name %></label>
	<input type="checkbox" name="post[category_ids][]" value="<%= c.id %>" id="category_id <%= c.id %>">
	</p>
	<% end %>

	<input type="test"  id="post_categories_attributes_0_name" name="post[categories_attributes][0][name]" />

	<input type="test"  id="post_categories_attributes_0_name" name="post[categories_attributes][1][name]" />
   <%= f.submit %>
<% end %> -->

	
	<%= form_for @comment do |f| %>
		<% f.hidden_field :post_id, value: @post.id %>
		Select user:
		<%= f.collection_select :user_id, User.all, :id, :username, include_blank: true %>
		<br />
		<%# f.fields_for :user do |user| %>

		 Or create new user: <%#= user.text_field :username %>
		<br />
	  <%# end %>

	  Comment Below: 
	  	<%= f.text_area :content %>

	  	<br />
		<%= f.submit "Create Comment" %>
<% end %>

	In the conversation: 

	<% @post.users.uniq.each do |user| %>
	<li> link_to user.username, user_path(user) %></li>
	<% end %>

refactoring this: 

<%= form_for (@post) do |f| %>
	<p>
	<%= f.label :title %>
	<%= f.text_field :title %><br />
	</p>
	<p>
	<%= f.label :content %>
	<%= f.text_field :content %><br />
	</p>


<% Category.all.each do |c| %>
	<p> 
	<label for="category_id <%= c.id %>"><%= c.name %></label>
	<input type="checkbox" name="post[category_ids][]" value="<%= c.id %>" id="category_id <%= c.id %>">
	</p>
	<% end %>

	<input type="test"  id="post_categories_attributes_0_name" name="post[categories_attributes][0][name]" />

	<input type="test"  id="post_categories_attributes_0_name" name="post[categories_attributes][1][name]" />
   <%= f.submit %>
<% end %>