Construct a bi-directional has many through.
Identify the join model in a has many through.
Construct a nested params hash with data about the primary object and a has many through association.
Use the conventional key names for associated data (association_attributes).
Name form inputs correctly to create a nested params hash with has many through association data.
Define a conventional association writer for the primary model to properly instantiate associations based on the nested params association data.
Define a custom association writer for the primary model to properly instantiate associations with custom logic (like unique by name) on the nested params association data.
Use fields_for to generate the association fields.


[x] Create a form at posts#new to create a new post
  [x] The form should include check boxes for us to select categories 
  [x] Text field to create a new category. You should do this with a nested form so that our controller stays thin. 
  [x] Typing in a Category name that already exists should not create a new category. 
  [x] If we type in a category that already exists, we should select it from the database and associate the post we've created with the existing category.

[x] Create a posts#show page to display the following:
  [x] The title and content of the post
  [x] All of the comments associated with the post
  [x] A list of all the unique users who have commented on the post. A user's name should only show up once in this section, even if they've commented multiple times.
  [x] A form to add a new comment. The form should have a drop-down menu to select a user (we'll change this in future lessons to automatically associate the comment with a logged-in user). We should also be able to create a new user here and automatically associate it with the post.

[x] Create a users#show page that links to all of the posts a user has commented on
[x] Create a categories#show page that links to all of the posts associated with a given category