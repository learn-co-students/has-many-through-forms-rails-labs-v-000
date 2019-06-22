class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user

  def user_attributes=(user_attributes)
    if user_attributes[:username] != ""
      user = User.find_or_create_by(user_attributes)
      self.user = user
    end
  end

end
