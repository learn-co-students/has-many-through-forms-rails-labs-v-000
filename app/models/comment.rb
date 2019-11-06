class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def user_attributes=(username)
    unless username[:username].empty?
      user = User.find_or_create_by(username)
      self.user_id = user.id
    end
  end
end
