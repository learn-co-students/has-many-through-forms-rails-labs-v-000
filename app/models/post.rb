class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories
  accepts_nested_attributes_for :comments

  # def categories_attributes=(attributes)
  #   category = Category.find_or_create_by(attributes)
  #   self.categories << category
  # end

end
