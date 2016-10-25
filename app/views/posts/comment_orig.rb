<h1>Title: <%= @post.title %></h1>
<h4>Content: <%= @post.content %></h4>
<h4>Categories: </h4>
<% @categories.each do |category| %>
<%= category.name %>
<% end %>


<h4>Unique Users who have commented: </h4>
<% @users.uniq.each do |user| %>
<%= link_to user.username, user_path(user) %><br>
<% end %>


<h4>User Comments: </h4>
<% @comments.each do |comment| %>
  <%= comment.user_id %>:
  <%= comment.content %><br>
<% end %>
  
<h4>Create Comment:</h4>
<%= form_for :comment do |f| %>
  <%= f.label "New User:" %>
  <%= f.text_field :user_attributes_username %><br>
  <%= f.label "or choose existing User:" %>
  <%= f.collection_select :user_id, User.all, :id, :username, {include_blank: ''} %><br>
  <%= f.label "Content:" %>
  <%= f.text_field :content %><br>
  <%= f.submit id="Create Comment" %>

<%#=  binding.pry %>

<% end %> 



<h1><%= @post.title %></h1>
<p><%= @post.content %></p>
<% @post.categories.each do |category| %>
  <p><%= category.name %></p>
<% end %>
<br>
Users who left a comment are :
<% @post.display_users.each do |user| %>
  <%= link_to user.username, user_path(user) %>
<% end %>


<h2>Comments</h2>

<h3>--- Previous comments ---</h3>

<% @post.comments.each do |comment| %>
  <%= comment.user.username %> says: <%= comment.content %>
  <br>
<% end %>

<h3>--- Add a new comment ---</h3>


<%= form_for @post.comments.build do |f|%>

  <%= f.hidden_field :post_id %>
  <%= f.collection_select :user_id, User.all, :id, :username, :include_blank => true %>

  <br>
  <%= f.fields_for :user_attributes do |user| %>
    <%= user.label :username %>
    <%= user.text_field :username %>
  <% end %>

  <br>
  <%= f.label :content %>
  <%= f.text_area :content %>

  <br>
  <%= f.submit "Create Comment" %>
<% end %>