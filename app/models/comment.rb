class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user

  def user_id=(user)
    if !user.empty?
      u = User.find(user.to_i)
      self.user = u
    end
    u
  end

  def user_attributes=(user)
    if !user[:username].empty?
      self.user = User.find_or_create_by(username: user[:username])
    end
  end
end
