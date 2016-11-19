class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  accepts_nested_attributes_for :categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :comments

  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attribute|
      category = Category.find_or_create_by(category_attribute)
      self.categories << category
    end
  end

  def users_attributes=(comment_user_attributes)
    comment_user_attributes.values.each do |comment_user_attribute|
      comment_user = Comment.user.find_or_create_by(comment_user_attribute)
      self.comment.users << comment_user
    end
  end



end
