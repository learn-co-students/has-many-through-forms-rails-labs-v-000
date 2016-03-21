class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  def categories_attributes=(category_attributes)
    category_attributes.values.each do |attr|
      category = Category.find_or_create_by(attr)
      self.categories << category
    end
  end

  def unique_users 
    self.comments.map {|comment| comment.user }.uniq
  end




end
