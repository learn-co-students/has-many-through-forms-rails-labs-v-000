class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def user_attributes=(user_attributes)
    if user_attributes[:username] != ""
        user = User.new(user_attributes)
        self.user = user
        user.save
    end
  end

end
