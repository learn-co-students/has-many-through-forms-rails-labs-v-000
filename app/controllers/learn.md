W ON

1 something is missing from the new comment form that would associate the comment with a post. this seems related to fields_for thing for category, but this time it shouldn’t be visible to the user. I have to use some kind of hidden field tag

1 "
Ally Kadel 7 MINUTES AGO
Compare those params to the params you need in order to create a new ASSOCIATED comment, and then that will tell you what hidden input fields you need to create to add those attributes to the params hash
"

If i put a pry in the create action for comments, it shows a comment does get created that has a user id. but the post id is still nil. so what i want to know is: how do i make sure that the post id is in the comment params when the form is submitted so it can be used to make the comment object; or how to associate them some other way; and if i have to do it the first way, which seems most likely, how do i use a 'hidden input field(s)' with the form to gather that information.

note- this is basically about having good intel. knowing what to look for and going and finding it. like pizza delivery, using the maps.

so in general, i need to know
1 how to create an associated object in a nested form

specifically
1 what should the params look like so the create action will work
2 in order to shape the params that way, what hidden input fields do i need
3 what are hidden input fields in this context
4  whats the syntax in terms of using the hidden input fields to access the attributes i need, so they get added to the params hash 

WD ON
