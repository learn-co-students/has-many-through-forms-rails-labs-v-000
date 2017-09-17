class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def user_attributes=(user_attributes)

    user_attributes.each do |user_attribute|
      #  user = User.where(id: user_id).first_or_create(username: user_attribute[1])
      #  user.username = user_attribute[1]
      #  self.user = user

      user_attribute[1].empty? ? user = User.find_by(id: user_id) : user = User.find_or_create_by(username: user_attribute[1])

      self.user = user
    end
  end
end
