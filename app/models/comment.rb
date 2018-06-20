class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  
  def user_attributes=(ua)
    unless (ua[:username]).empty?
      user = User.find_or_create_by(username: ua[:username])
      self.user = user
    end
  end
end
