class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, :reject_if => proc { |attributes| attributes['username'].blank? }

  # def user_attributes=(new_user)
  #   self.user = User.find_or_create_by(username: new_user["username"])
  #   self.user.update(new_user)
  # end

end
