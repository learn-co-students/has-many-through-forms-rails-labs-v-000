class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post


  def user_attributes=(user_attributes)
    if !user_attributes[:username].empty?
      user = User.find_or_create_by(username: user_attributes[:username])
      user.comments << self
    end
  end


  def user_attributes
    self.user_attributes
  end

end
