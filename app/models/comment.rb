class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user

  def user_attributes=(user_attributes)
    unless self.user && user_attributes[:username].blank?
      comment_user = User.find_or_create_by(username: user_attributes[:username])
      self.user = comment_user
    end
  end
end
