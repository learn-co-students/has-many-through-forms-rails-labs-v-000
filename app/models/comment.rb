class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def user_attributes=(user_attributes)
    if user_attributes["username"] != ""
      user = User.find_or_create_by(user_attributes)
      self.user = user
      user.comments << self
      binding.pry
    end
  end


end
