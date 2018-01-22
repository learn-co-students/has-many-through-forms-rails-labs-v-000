class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

 def categories_attributes=(categories_hashes)
   categories_hashes.each do |i, category_attributes|
     if category_attributes[:name].present?
       category=Category.find_or_create_by(name: category_attributes[:name])
     end
     if !self.categories.include?(category)
       self.post_categories.build(:category =>category)
     end
   end
   #raise category_hashes.inspect
 end


 def user_attributes(user_hash)
  if user_hash[:name].present?
     user=User.find_or_create_by(name: user_hash[:name])
   end
 end

end
