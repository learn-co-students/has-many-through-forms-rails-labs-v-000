class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attribute|
    # or: category_attributes.each do |i, category_attribute|
      if category_attribute[:name].present? # Don't create a blank category
        category = Category.find_or_create_by(category_attribute)
        if !self.categories.include?(category) # only create the post category if the post doesn't have it
          self.post_categories.build(:category => category)
          # or: self.categories << category
        end
      end
    end
  end

end
