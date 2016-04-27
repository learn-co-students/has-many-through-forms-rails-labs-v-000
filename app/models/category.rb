class Category < ActiveRecord::Base
  has_many :post_categories
  has_many :posts, through: :post_categories

  def user_attributes=(user_attributes)
    user = User.find_or_create_by(user_attribute)
    self.user = user
  end

end
