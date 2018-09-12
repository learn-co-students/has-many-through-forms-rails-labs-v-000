class Post < ActiveRecord::Base
  has_many :post_categories #all this does is add methods (lookup google)
  # Methods:
  # #post_categories
  # #post_categories<<
  # #post_categories.delete
  # #post_category_ids=ids
  has_many :categories, through: :post_categories #all this does is add methods
  # Methods:
  # #category_ids=ids

  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories

# creates
  def categories_attributes=(category_attributes)
    #raise category_attributes.inspect
    #{"0"=>{"name"=>"new category 1"}, "1"=>{"name"=>"new category 2"} }
    categories_attributes.each do |i, category_attributes|
      # create a new category if this post doesn't already have this category
      #find or create the category regardless of whether this post has it...

      # DO NOT CREATE A CATEGORY IF IT DOESN'T HAVE A NAME
      if category_attributes[:name].present?

        category = Category.find_or_create_by(name: category_attributes[:name])
        #But also don't add a category to a post if it already has it.
        if !self.categories.include?(category)
        # inefficient, the below code will return all categories
        # self.categories << category
        self.post_categories.build(:category => category)
      end
      # I need to create a category that is already assoicated with this post
      # and I need to make sure that this category already doesn't exist by name.

      # below is another solution:
    # category_attributes.values.each do |category_attribute|
    #   category = Category.find_or_create_by(category_attribute)
    #   self.categories << category
    # end
  end

end
