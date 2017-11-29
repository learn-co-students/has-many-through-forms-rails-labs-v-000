class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  #def categories_attributes=(category_attributes)
    #category_attributes.values.each do |category_attribute|
      #category = Category.find_or_create_by(category_attribute)
      #self.categories << category
    #end
  #end

  # self.categories << category works but is inefficient and not ideal b/c it will return all of the categories

# Below, categories_hashes is a hash with 'indexed' keys of "0" and "1",
# EACH of which points to a hash containing 1 key/value pair of name attribute data
# for a single category instance that the post will be included in.
# categories_hashes looks something like this:
# {"0" => {"name" => "name of a category"}, "1" => {"name" => "name of another category"}}
# We want to create a category instance for each of the hashes inside categories_hashes
# When you iterate over a hash, you get 2 variables yielded to you, i.e., |key,value|
# Iterate over categories_hashes
# 1st variable yielded is i to stand for index ("0" and "1" keys)
# 2nd variable yielded is category_attributes to represent this part: {"name" => "name of a category"}
  def categories_attributes=(categories_hashes)
    categories_hashes.each do |i, category_attributes|
      # I need to create a category instance that is already associated with this post instance
      # and I need to make sure that a category instsance with this same name attribute value doesn't already exist
      # first, find or create the category instance regardless of whether this post has it...
      category = Category.find_or_create_by(name: category_attributes[:name])
      # To associate a post and a category, insert a row into the post_categories join table
      # instantiate an instance of PostCategory join model, which belongs_to a post and belongs_to a category
      # the instance of the PostCategory join model is already associated to the post instance (self),
      # and then we're just passing in the category
      self.post_categories.build(:category => category)
      # the category instance that the PostCategory join model instance belongs_to is the category instance just created
    end
  end
end
