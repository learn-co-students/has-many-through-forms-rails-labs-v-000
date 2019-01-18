class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def user_attributes=(user_attributes)
    #raise user_attributes.inspect
    #binding.pry
    if user_attributes[:username] != ""
      user = User.find_or_create_by(username: user_attributes[:username])
      self.user = user
    end
  end
end
