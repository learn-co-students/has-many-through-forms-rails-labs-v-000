class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user

  def user_username= (uname)
    self.user = User.find_or_create_by(username:uname)
  end

  def user_username
    self.user ? self.user.username : nil
  end
end
