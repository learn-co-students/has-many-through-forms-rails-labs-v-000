class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  def categories_attributes=(category)
    category = Category.find_or_create_by(name: category)
    self.categories << category
  end
end
