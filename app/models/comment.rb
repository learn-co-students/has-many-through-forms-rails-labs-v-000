class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: proc { |attributes| attributes['title'].blank? }
  def user_attributes=(user)
    if !user["username"].empty?
    self.user = User.find_or_create_by(username: user["username"])
    self.user.update(user)
  end
  end
end
 
