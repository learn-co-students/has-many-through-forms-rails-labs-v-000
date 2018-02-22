require 'pry'
class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories

  def category_ids=(ids)

  end

  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attribute|
      binding.pry
      self.categories << Category.find_or_create_by(category_attribute)
    end
  end

end
