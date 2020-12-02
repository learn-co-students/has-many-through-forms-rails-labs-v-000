 New Comment: <%= f.text_field :comment_content, id: "comment_content" %>

Current Username: <%= f.collection_select :users, User.all ,:id, :username, {:include_blank => ""} %>
<%= f.fields_for :users, @post.users.build do |users_fields| %>
  
  New Username:<%= users_fields.text_field :username %>
  <% end %> 

<%= f.submit %>

<% end %>