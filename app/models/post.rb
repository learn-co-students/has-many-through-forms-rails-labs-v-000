class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  #accepts_nested_attributes_for :users

  def categories_attributes=(category_attributes)
    category_attributes.values.each do |catergory_attribute|
      category = Category.find_or_create_by(catergory_attribute)
      self.categories << category
    end
  end

  #def comments_attributes=(comment_attributes)
  #  comment_attributes.values.each do |comment_attribute|
  #    comment = Comment.find_or_create_by(comment_attribute)
  #    self.comments << comment
  #  end
  #end

  #def user_attributes=(user_attributes)
  #  user_attributes.values.each do |user_attribute|
  #    user = User.find_or_create_by(user_attribute)
  #    self.users << user
  #  end
  #end
end
