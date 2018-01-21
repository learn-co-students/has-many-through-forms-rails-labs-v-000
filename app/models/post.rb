class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

 def categories_attributes=(category_hashes)
   category_hashes.each do |i, categories_attributes|
     category=Category.find_or_create_by(name: categories_attributes[:name])
     self.post_categories.build(:category =>category)
   end
   #raise category_hashes.inspect
 end
end
