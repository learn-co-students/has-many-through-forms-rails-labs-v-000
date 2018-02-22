class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories, :users, :comments


  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attribute|
      # do not create category if it doesn't have a name
      # if category_attributes[:name].present?
        category = Category.find_or_create_by(category_attribute)
        # if !self.categories.include?(category)
          # inefficient
          # self.categories << category
          self.post_categories.build(:category => category)
        # end
      # end
    end
  end

  def users_attributes=(users_attributes)
    users_attributes.values.each do |user_attributes|
      user = User.find_or_create_by(user_attributes)
      self.users << user
    end
  end

  def comments_attributes=(comments_attributes)
    self.comments.build(comments_attributes)
  end
end
