class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  validate :cannot_be_zero

  def cannot_be_zero
    self.user_id != 0
  end

  # def user_id=(username)
  #   user = User.find_by(username: username)
  #   self.user_id = user.id
  # end

  def users_attributes=(users_attributes)
    users_attributes.each do |i, user_attributes|
      @user = User.find_or_create_by(user_attributes)
      self.user_id = @user.id
    end
  end
end
