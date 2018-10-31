class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  def categories_attributes=(category_attributes)
    self.categories << category_attributes.values.collect do |category_attribute|
      Category.find_or_create_by(category_attribute)
    end
  end
end
