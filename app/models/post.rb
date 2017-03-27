class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  accepts_nested_attributes_for :categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :users

  def categories_attributes=(category_attributes)
    category_attributes.values.each { |category_attribute|
        self.categories << Category.find_or_create_by(category_attribute) if category_attribute[:name].size > 0
    }
  end

  def user_attributes=(user_attributes)
    user_attributes.each { |user_attribute|
      attr_name  = user_attribute[0]
      attr_value = user_attribute[1]
      if attr_name == "username" and attr_value.size > 0
        self.user = User.find_or_create_by(username: attr_value)
      end
    }
  end

  def unique_comment_users
    self.comments.collect { |comment| comment.user }.uniq
  end
end
