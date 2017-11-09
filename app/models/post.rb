class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  def categories_attributes=(category_attributes)
      category_attributes.each do |i, category_attribute|
      if category_attributes[:name] != ""
        category = Category.find_or_create_by(category_attribute)
        # self.categories << category //inefficient and not ideal. returns entire array
        if !self.categories.include?(category)
          self.post_categories.build(:category => category)
        end #instantiates instance of join model and passes category...more efficient
      end
    end
  end


end
