class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def username
    user ? self.user.username : nil
  end
end
