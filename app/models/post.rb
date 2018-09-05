class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :categories

  # def category_attributes=(category_attributes)
  #   category_attributes.values.each do |category_attribute|
  #     binding.pry
  #     category = Category.find_or_create_by(category_attribute)
  #     self.post_categories.build(category: category)
  #   end
  # end
  
  def comment_attributes=(comment_attributes)
    comment_attrbute.values.each do |comment_attribute|
      comment = Comment.find_or_create_by(comment_attribute)
      self.post_comments.build(comment: comment)
    end
  end

  def user_attriburtes=(user_attributes)
    user_attributes.values.each do |user_attribute|
      user = User.find_or_create_by(user_attribute)
      self.post_comm
      self.user << user
    end
  end

end
