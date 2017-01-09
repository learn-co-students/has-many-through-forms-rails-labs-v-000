class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments


  def categories_attributes=(attr_hash)
    attr_hash.values.each do |attr|
      category = Category.find_or_create_by(attr)
      self.categories << category
    end
  end

end
