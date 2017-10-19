class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories

  def unique_users
    self.users.uniq
  end

  def categories_attributes=(attributes)
    attributes.values.each do |c|
      category = Category.find_or_create_by(c)
      self.categories << category
    end
  end
end
