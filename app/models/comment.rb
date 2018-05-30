class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def user_attributes=(user_attributes)
    user_attributes.values.each do |user_attribute|
      user = User.find_or_create_by(username: user_attribute)
      self.user_id == user.id
      self.post_id == post_id
    end
  end

  def user_attributes
    @user_attributes
  end

end
