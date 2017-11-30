class Category < ActiveRecord::Base
  has_many :post_categories
  has_many :posts, through: :post_categories

  def category_attributes=(category_attributes)
    category_attributes.values.each do |category_attribute|
      category = Category.find_or_create_by(category_attribute)
      self.category << category
    end
  end
  
end
