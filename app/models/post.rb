class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories #only adds a method

#   def categories_attributes=(categories_hashes)
#     #raise category_hashes.inspect
#     if category_attributes[:name].present?
#       categories_hashes.each do |i, cat_attributes|
#       category = Category.find_or_create_by(name: cat_attributes[:name])
#         if !self.categories.include?(category)
#           self.post_categories.build(category: category)
#         end
#     end
#   end
# end

def categories_attributes=(category_attributes)	
   category_attributes.values.each do |category_attribute|	
     category = Category.find_or_create_by(category_attribute)	
     self.categories << category	
   end	
 end

end