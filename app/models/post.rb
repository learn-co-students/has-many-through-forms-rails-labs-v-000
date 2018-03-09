class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories, reject_if: :reject_posts

  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attributes|
      category = Category.find_or_create_by(category_attributes)
      self.categories << category
    end
  end

  def reject_posts(attributes)
    attributes['name'].blank?
  end
end
