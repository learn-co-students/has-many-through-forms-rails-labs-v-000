<!--

  <%= form_for @post.comments.build do |f| %>
    <%= f.label :content %>
    <%= f.text_area :content %>
    <%= f.label :user %>
    <%= f.collection_select :user_id, User.all, :id, :username %>
    <%= f.hidden_field :post_id %>
    <%= f.label :username %>
    <%= f.fields_for :user, @post.comments.last.build_user do |user_fields| %>
    		<%= user_fields.text_field :username %>
    	<% end %>
  <%= f.submit 'Create Comment'%>
  <% end %> -->

  <!-- <%=form_for @post do |f|%>
    <%= f.fields_for :comments, @post.comments.build do |comment| %>
        <%= comment.text_field :comment_content %>
        <%= comment.text_field :comment_user_id %>
      <% end %>
    <%= f.submit %>
  <% end %> -->

  <%@users = []%>
  <%@users << comment.user if @users != comment.user%>
  Users Who Commented:
  <%if @users != nil%>
  <%binding.pry%>
    <%=@users.each do |user|%>
      <%=user.username%>
      <%end%>
  <%end%>
<%end%>
