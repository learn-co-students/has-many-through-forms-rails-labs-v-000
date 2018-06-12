class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  accepts_nested_attributes_for :categories
  has_many :comments
  has_many :users, through: :comments


def category_attributes=(category_attributes)
  category_attributes.values.each do |cat|
    category = Category.find_or_create_by(name: cat[:name])
    self.categories << category
  end
end
end
