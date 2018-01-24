class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def user_attributes=(user_hash)
    if user_hash[:username] == ""
    else
      user = User.find_or_create_by(username: user_hash[:username])
      self.user = user
      self.save
    end
  end

end
