class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories

  def category_ids=(category_ids)
    category_ids.each do |id|
      self.categories << Category.find(id) if !id.empty?
    end
  end

  def categories_attributes=(categories_attributes)
    categories_attributes.each do |attribute, value|
      self.categories << Category.find_or_create_by(attribute.to_sym => value) if !value.empty?
    end
  end
end
