class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def user_attributes=(attributes)
    if !attributes[:username].empty?
      self.user.username = User.find_or_create_by(username: attributes[:username])
    end
  end

    def user_username=(username)
      self.user = User.find_by(username: username)
    end

    def user_username
      if self.user
        self.user.username
      end
    end

end
