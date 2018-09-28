class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def user_attributes=(user_attributes)
    user_attributes.each do |i, user_name|
      if user_name != ""
        @user = User.find_or_create_by(username: user_name)
        self.user_id = @user.id
      end
    end
  end

end
