class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  validates_presence_of :user_username

  def user_attributes=(attributes)
    if !attributes[:username].empty?
      #binding.pry
      self.user_id = User.find_or_create_by(username: attributes[:username]).id
      #binding.pry
    end
  end

    def user_username=(username)
      if username != nil
        self.user = User.find_by(username: username)
      end
    end

    def user_username
      if self.user != nil
        self.user.username
      end
    end

end
