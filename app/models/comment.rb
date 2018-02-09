class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def username
    self.user.username
  end

  def user_attributes=(user_attributes)
    self.user = User.find_or_create_by(user_attributes) unless user_attributes[:username].empty?
  end
end
