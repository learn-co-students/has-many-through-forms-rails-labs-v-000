class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user, reject_if: proc {|attributes| attributes[:username].blank? }

  # def user_attributes=(user_attributes)
  #     user_attributes.each do |i, attributes|
  #     	user = User.find_or_create_by(username: attributes[:username])
  #     	self.user.build(:user => user)
  #     end
  # end

end
