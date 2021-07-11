
Now, we're only creating a new category if it doesn't already exist with the current name. We're also using a cool method called `categories<<`.  What's great about this is you can mentally think of it as two steps. First, we call `self.categories`, which returns an array of `Category` objects, and then we call the shovel (`<<`) method to add our newly found or created `Category` object to the array. We could imagine later calling `save` on the `Post` object and this then creating the `post_categories` join record for us. In reality, this is syntactic sugar for the `categories<<` method. That's the actual method name, and behind the scenes it will create the join record for us. It's one of the methods dynamically created for us whenever we use a `has_many` association. The end result is this method doing exactly what Active Record was doing for us before; we're just customizing the behavior a little bit.

## Conclusion/So What?

As you can see, it doesn't really matter how complex our associations are –– Active Record is really good at managing that complexity for us. We can always drop down a level of abstraction if needed to customize the way our application behaves.


<!-- 
Add a Comment: <br/>
    <%= form_for @new_c do |f| %>
        <%= f.collection_select :user_id, User.all, :id, :username, prompt: "Choose username or add new "%>
        <%= f.fields_for :user, @new_c.build_user do |user_field| %>
            <%= user_field.text_field :username %>
        <% end %>
        <%= f.text_field :content %>
        <%= f.hidden_field :post_id, :value => @post.id %>
        <%= f.submit %>
    <% end %> -->