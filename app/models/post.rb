class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  accepts_nested_attributes_for :categories
  has_many :comments
  has_many :users, through: :comments

  def categories_attributes=(category_attributes)
    category_attributes.values.each { |category_attribute|
      #        self.categories << Category.find_or_create_by(category_attribute) if category_attribute[:name].size > 0
      self.post_categories.new(category: Category.find_or_create_by(category_attribute)) if category_attribute[:name].present?
    }
  end

  def unique_comment_users
    self.comments.collect { |comment| comment.user }.uniq
  end
end
