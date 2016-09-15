class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def comm_user
    if self.user
      return self.user.username
    else
      return "unkown user"
    end
  end

end
