- post has many categories
category has many posts
- POst nested form with smat=rt non duplicate categories
- Post have many comments
- A comment belongs to a user
- Need a comment form with a drop down for users on form page



join model
many to many, because categories are unique.
so it can't be post - category.id because then it would only have one category
post model
categories model
post_categirues



1. post have many categories / category has many posts
2. post nested form with smart non duplicate categories
3. Post have many comments
4. Comment belongs_to a user
5. Need a comment form with dropdown for users and text box for user name


Spec order
post_spec
categories_spec




The first (low-level) version of creating checkboxes:

<% Category.all.each do |c| %>
<p>
  <label for="category_id_<%= c.id %>"><%= c.name %></label>
  <input type="checkbox" name="post[category_ids][]" value="<%= c.id %>" id="category_id_<%= c.id %>">
</p>
<% end %>




<%= f.fields_for :categories, @post.categories.build do |category_builder| %>
  <%= category_builder.text_field :name %>
  
f.fields_for is the abstract version for this:

<input type="text" id="post_categories_attributes_0_name" name="post[categories_attributes][0][name]" />




<input type="text" id="comment_user_attributes_username" name="comment[user_attributes][0][username]" />
