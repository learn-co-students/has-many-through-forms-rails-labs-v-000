class User < ActiveRecord::Base
  has_many :comments
  has_many :posts, through: :comments


  # def categories_attributes=(category_attributes)
  #   category_attributes.values.each do |category_attribute|
  #     category = Category.find_or_create(category_attribute)
  #     self.categories << category
  #   end 
  # end

end
