1. category_ids:[] We are creating category id's hash so that when we select more than one category in the new form it will show the categories in the params hash.


2. We are getting the category_ids= method from the has many active records method.
<input type="checkbox" name="post[category_ids][]" value="c.id" id="category_id_<%=c.id%>">

same as

<%= t.collection_check_boxes :category_ids, Category.all, :id, :name %>

3. <input type="text" id="post_categories_attributes_0_name" name="post[categories_attributes][0][name]" value="">

same as


<%= t.fields_for :categories, post.categories.build do |categories_fields| %>
<%= categories_fields.text_field :name %>
<% end %>
