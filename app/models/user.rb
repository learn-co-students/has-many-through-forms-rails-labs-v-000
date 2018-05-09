class User < ActiveRecord::Base
  has_many :comments
  has_many :posts, through: :comments


    def users_attributes=(user_attributes)
      users_attributes.each do |i, user_attributes|
        if user_attributes[:username].unique?
          user = User.find_or_create_by(username: user_attributes[:username])
          if !self.users.include?(user)
            self.user_comments.build(user: user)
          end
        end
      end
    end
  
  
end
