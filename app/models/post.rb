class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  #Now, when we do mass assignment, our Post model will call a method called categories_attributes=. Let's add that method to our model using the accepts_nested_attributes_for macro.
  #also works with post_controller post_params add on for categories attributes
  accepts_nested_attributes_for :categories

  #if a new attribute is input, it will check if exists, if not create a new category
  def categories_attributes=(category_attributes)
        category_attributes.values.each do |category_attribute|
              category = Category.find_or_create_by(category_attribute)
              self.categories << category
        end
  end


end
