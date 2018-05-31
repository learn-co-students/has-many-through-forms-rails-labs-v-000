class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

   def categories_attributes=(name)
    
     name.each do |key|
    
      if key[:name].present?
        category = Category.find_or_create_by(name: key[:name])
       # self.categories << category
        self.post_categories.build(category: category)
      end
     end
   end
 
   # def categories_attributes
   #    self.category ? self.category.name : nil
   # end

end
