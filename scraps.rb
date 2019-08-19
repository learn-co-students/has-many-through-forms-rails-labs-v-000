Below is the best I could do with their instruction -->
<!-- <h3>Enter a Comment:</h3>

# <%= form_for @comment do |f| %>
  <%= f.text_area :content %>

    <br>

  <%= f.collection_radio_buttons :user_id, User.all, :id, :username %>

    <br>

  <%= f.fields_for :user, @comment.build_user do |user_fields| %>
    <%= user_fields.label :username, "New User Name" %>
    <%= user_fields.text_field :username %>
  <% end %>

    <br>

  <%= f.submit "Create Comment" %>
<% end %> -->
