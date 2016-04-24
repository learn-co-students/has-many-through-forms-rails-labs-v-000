--posts#new--
1. Include Check Boxes for us to select categories as well as
   a text field to create a new category.(nested)
2. If a category name exists, it will find that object instead
   of create a new one.

--posts#show--
x 1. Displays the title and content of the post.
x 2. Displays all the comments associated with the post.
x 3. Lists all of the unique users who have commented on the post.
   A user's name should only appear once.(uniq)
4. Should have a form to add a new comment. The form should
   have a drop down menu to select or create a user.

::HINTS::
1. When creating new comments, we should only create a new user
   if they filled in that input. accepts_nested_attributes has a
   reject_if option that you can configure to only create new
   records if all the fields aren't blank.
ex. accepts_nested_attributes :categories, reject_if (method_name)
2. Also, the select box that we use for the users needs to have
   a blank option - check out the include_blank option for
   collection_select.
ex. select("post", "person_id", Person.all.collect {|p| [ p.name, p.id ] }, {include_blank: 'None'})
