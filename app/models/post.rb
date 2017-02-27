class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories

  def distinct_users
    users.distinct
  end

  def category_names
    categories.map(&:name).join(', ')
  end

  def categories_attributes=(categories_attributes)
    categories_attributes.values.each do |category_attributes|
      next if category_attributes[:name].blank?
      category = Category.find_or_create_by category_attributes
      categories << category
    end
  end
end
