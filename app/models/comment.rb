class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  # def user_unique
  #   self.user.username.first
  # end
end
