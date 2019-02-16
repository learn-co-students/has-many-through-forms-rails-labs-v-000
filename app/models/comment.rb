class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def user_attributes=(user_hashes)
    user_hashes.each do |i, user_attributes|
      if user_attributes[:username].present?
        user = User.find_or_create_by(username: user_attributes[:username])
        if self.user!=user
          self.comment_user.build(:user => user)
        end
      end
    end
  end

end
