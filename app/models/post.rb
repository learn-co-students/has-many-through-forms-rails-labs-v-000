class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :categories

  def categories_attributes=(value)
    if value["0"]["name"] != ""
      another_category  = Category.find_or_create_by(name: value["0"]["name"])
      self.categories << another_category
    end
  end
end
