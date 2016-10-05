Create a form at posts#new to create a new post. The form should include check boxes for us to select categories as well as a text field to create a new category. You should do this with a nested form so that our controller stays thin. Also, typing in a Category name that already exists should not create a new category. Instead, if we type in a category that already exists, we should select it from the database and associate the post we've created with the existing category.

Create a posts#show page to display the following:
The title and content of the post.
All of the comments associated with the post.
A list of all the unique users who have commented on the post. A user's name should only show up once in this section, even if they've commented multiple times.
A form to add a new comment. The form should have a drop-down menu to select a user (we'll change this in future lessons to automatically associate the comment with a logged-in user). We should also be able to create a new user here and automatically associate it with the post.
Create a users#show page that links to all of the posts a user has commented on.
Create a categories#show page that links to all of the posts associated with a given category.
