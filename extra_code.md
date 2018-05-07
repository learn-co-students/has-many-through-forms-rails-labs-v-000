<%= link_to @post.users, users_path(@post.users) %> from show.html.erb (posts)
<!-- 
		<% Category.all.each do |c| %>
		<p>
			<label for="category_id_<%= c.id %>"><%= c.name %></label>
			<input type="checkbox" name="post[category_ids][]" value="<%= c.id %>" id="category_id_<%= c.id %>">
		</p> -->
		<!-- # <% end %> -->

		from posts#new : 
		<%= #form_for @post do |f| %>
	#<%= #f.collection_select :post, Post.all 

	from posts#show:
	Comments:<br />

<%= @post.comments.each do |u| %>
	<%= u.comment %> by <%= u.user %>

	<% end %>

from _post.html.erb
	<!--# <%= comment.content %>
    # <%= user.username %> -->
    

from posts/show.html.erb
Comments: <br />
	<%= f.fields_for :comments, post.comments.build do |comment_builder| %>
		<%= comment_builder.text_area(comment_params) %>
		<%= comment_builder.text_field(user: :username) %>
	<% end %>