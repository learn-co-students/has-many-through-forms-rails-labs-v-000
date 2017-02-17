class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments


  def categories_attributes=(category_hashes)
    category_hashes.values.each do |cat_hash|
      category = Category.find_or_create_by(cat_hash)
      self.categories << category
    end
  end

  

end
