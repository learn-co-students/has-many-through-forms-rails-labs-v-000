class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories

  def categories_attributes=(cat_at)
    cat_at.values.each do |cat|
      self.categories << Category.find_or_create_by(cat)
    end
  end
end
