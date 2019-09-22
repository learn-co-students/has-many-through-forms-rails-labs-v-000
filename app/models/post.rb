require 'pry'
class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories, reject_if: proc { |attributes| attributes['name'].blank? }

  def category_ids=(ids)
    ids.delete("")
    ids.each do |id|
      self.categories << Category.find(id)
    end
  end

  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attribute|
      self.categories << Category.find_or_create_by(category_attribute)
    end
  end
end
