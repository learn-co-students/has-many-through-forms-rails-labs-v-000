class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  def categories_attributes=(cat_hashes)
    cat_hashes.each do |i, cat_attr|
      category = Category.find_or_create_by(name: cat_attr[:name])
      self.categories << category
    end
  end


end
