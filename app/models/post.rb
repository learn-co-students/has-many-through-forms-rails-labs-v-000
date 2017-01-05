class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  def categories_attributes=(category_attribute)
    category_attribute.values.each do |attribute|
      category = Category.find_or_create_by(attribute)
      self.categories << category
    end
  end

  accepts_nested_attributes_for :comments

  def comment_users
    users = []
    self.comments.each do |comment|
      if !users.include?(comment.user)
        users << comment.user
      end
    end
    users
  end


end
