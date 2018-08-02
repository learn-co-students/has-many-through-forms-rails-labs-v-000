class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :categories
  accepts_nested_attributes_for :comments

  def category_attributes=(category_attributes)
    category_attributes.values.each do |cat_att|
      category = Category.find_or_create_by(cat_att)
      self.categories << category
    end
  end

  def username=(username)
    self.username = User.find_or_create_by(username: username)
  end

  def username
    self.username ? self.username : nil
  end

end
