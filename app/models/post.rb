class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  
  accepts_nested_attributes_for :categories
  accepts_nested_attributes_for :comments

  def categories_attributes=(category_attributes)
    category_attributes.each do |index, category_attributes|
      category = Category.find_or_create_by(name: category_attributes[:name]) if category_attributes[:name].present? 
      self.post_categories.build(category: category) if !self.categories.include?(category)
    end
  end
end
