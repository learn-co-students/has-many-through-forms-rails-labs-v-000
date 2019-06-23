 <%= form_for(@post) do |f| %>
 <p>
    <%= f.label :title %>
    <%= f.text_field :title %>
</p>
<p>
    <%= f.label :content %>
    <%= f.text_area :content %>
</p>
<p>
    <%= f.collection_check_boxes :category_ids, Category.all, :id, :name %>
</p>
<p>
    <%= f.fields_for :categories, post.categories.build do |categories_fields| %>
        <%= categories_fields.text_field :name %>
    <% end %>
    
     <%= f.fields_for :categories, Category.new do |category_builder| %>
        <%= category_builder.text_field :name %>
    <% end %> 
</p> 


---
 <% Category.all.each do |c| %>
<p>
    <label for="category_id_<%= c.id %>"><%= c.name %></label>
    <input type="checkbox" name="post[category_ids][]" value="<%= c.id %>" id="category_id_<%= c.id %>">
</p>
<%end%>
   
    <input type="text" id="post_categories_attributes_0_name" name="post[category_attributes][0][name]">
