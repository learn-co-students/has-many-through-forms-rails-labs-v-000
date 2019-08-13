class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attr|
      category = Category.find_or_create_by(category_attr)
      self.categories << category
    end
  end

  def unique_commenters
    self.users.collect {|user| user.username}.uniq.sort
  end
end
