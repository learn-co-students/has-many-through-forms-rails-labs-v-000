class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  def categories_attributes=(cat_attrs)
    cat_attrs.values.each do |cat_attr|
      cat = Category.find_or_create_by(cat_attr)
      self.categories << cat
    end
  end

  
end
