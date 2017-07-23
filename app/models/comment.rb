class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def user_attributes=(user_attributes)
    user_attributes.each do |i, user_attributes|
      if user_attributes != ""
        new_user = User.create(username: user_attributes)
        self.user_id = new_user.id
        self.save
      end
    end
  end
end
