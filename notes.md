<%= c.collection_select :users, User.all, :id, :username %>
  <%= c.fields_for :users, @comment.users.build do |users_fields| %>
    <%= users_fields.text_field :username %>
  <% end %> 


  


<%= form_for @comment do |f| %>
  
  <%= f.label "Users" %>
  <%= f.collection_select :user_ids, User.all, :id, :username %>

  <%= f.label "Content" %>
  <%= f.text_field :content %>


  <%= f.submit "Submit" %>
<% end %>




<%= @user.username %> says:  
<ul>
<% @user.posts.each do |p| %>
	<li><%= link_to p.title, post_path(p) %></li>
<% end %>
</ul>

<ul>
<% @post.users.each do |u| %>
 <li> Comment Username: <%= link_to u.username, user_path(u) %> </li>
  
  <ul>
  	Comment Content:  
  	<% u.comments.each do |c| %> 
  		<% if c.post_id == @post.id %>
  	<li>		<%= c.content %> </li>
  		<% end %>
  	</ul>
  	<% end %>
  
 
<% end %>
</ul>
