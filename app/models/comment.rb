class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user

  def user_name
    self.user.username
  end

  def user_attributes=(user_attributes)
    # binding.pry
    user = User.find_or_create_by(user_attributes)
    self.user = user
  end
end
