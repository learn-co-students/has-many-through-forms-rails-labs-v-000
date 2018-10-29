class Post < ActiveRecord::Base
  has_many :post_categories

  has_many :categories, through: :post_categories

  has_many :comments
  accepts_nested_attributes_for :categories
  has_many :users, through: :comments


  def categories_attributes=(category_attributes)
      category_attributes.each do |i, category_attributes|
        #category = Category.find_or_create_by(category_attributes)
        if category_attributes[:name].present?
          category = Category.find_or_create_by(name: category_attributes[:name])
          if !self.categories.include?(category)
          #self.categories << category is inefficient
            self.post_categories.build(:category => category) #avoids an extra step DOES EXACTLY what we want and nothing else 53:46
          end
        end
      end
    end

end
