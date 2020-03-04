class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :categories
  accepts_nested_attributes_for :comments

  def unique_users
    self.users.uniq
  end

  def users_attributes=(user_attributes)
    binding.pry
    user_attributes.values.each do |user_attribute|
      user = User.find_or_create_by(user_attribute)
      self.users << user
    end
  end
end
