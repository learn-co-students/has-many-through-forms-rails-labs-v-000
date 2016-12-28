class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories
<<<<<<< HEAD
=======

 def categories_attributes=(category_attributes)
   category_attributes.values.each do |category_attribute|
     category = Category.find_or_create_by(category_attribute)
     self.categories << category
   end
 end
>>>>>>> b5388792a09cb06e98fd7fe1c719990ecd8bbcf5

  def categories_attributes=(category_attributes)
     category_attributes.values.each do |category_attribute|
       category = Category.find_or_create_by(category_attribute)
       self.categories << category
     end
   end

end
