class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories

  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attr|
      category = Category.find_or_create_by(category_attr)
      #because << returns every category, and unncessarily takes up memory
      self.post_categories.build(category: category)
    end
  end

  def unique_commenters
    self.users.uniq
  end

end
