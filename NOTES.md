Features:

Post_Categories
belongs_to posts
belongs_to categories

Category:
has_many post_categories
has_many posts through post_categories

Post:
has_many comments
has_many users, through comments
has_many categories
accepts_nested_attributes_for :categories

User:
has_many comments
has_many posts through comments

Comment:
belongs_to users
belongs_to comments
