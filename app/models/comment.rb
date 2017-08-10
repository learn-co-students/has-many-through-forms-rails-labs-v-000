class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def user_attributes=(user_attributes)
    if user = User.find_by(username: user_attributes[:username])
      self.user = user
    elsif user_attributes[:username].present?
      self.build_user(user_attributes)
    end
  end
end
