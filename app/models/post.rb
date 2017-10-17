class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
<<<<<<< HEAD
  #accepts_nested_attributes_for :categories

  def categories_attributes=(categories_attributes)
   categories_attributes.values.each do |category_attribute|
     category = Category.find_or_create_by(category_attribute)
     self.post_categories.build(category: category)
   end
 end
end
=======
  accepts_nested_attributes_for :categories
end
  # def categories_attributes=(category_attributes)
  #  category_attributes.values.each do |category_attribute|
  #    category = Category.find_or_create_by(category_attribute)
  #    self.post_categories.build(category: category)
  #  end
>>>>>>> a64f699f04f2e1b697e87ae127dbc98ca164bcaa
