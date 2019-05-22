class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :categories

  def categories_attributes=(category_attributes)
    category_attributes.values.each do |cat_att|
      category = Category.find_or_create_by(cat_att)
      self.categories << category
    end
  end

  def comments_attributes=(comment_attributes)
    comment_attributes.values.each do |com_att|
      comment = Comment.find_or_create_by(com_att)
      self.comments << comment
    end
  end
end
