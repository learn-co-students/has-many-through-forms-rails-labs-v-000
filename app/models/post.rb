class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  def categories_attributes=(attributes_hash)
    attributes_hash.values.each do |val|
      category = category.find_or_create_by(val)
      self.categories << category
    end
  end

end
