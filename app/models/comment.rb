class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, :reject_if => :all_blank

  # def user_attributes=(user_attributes)
  #   !user_attributes[:username].blank? ? self.build_user(username: user_attributes[:username]) : self.user = User.find(self[:user_id])
  #   self.save
  # end
end
