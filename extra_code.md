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
