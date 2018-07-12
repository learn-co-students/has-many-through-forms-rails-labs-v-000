class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: proc { |attributes| attributes['username'].blank? }

  #def user_attributes=(user_attributes)
  #  self.username = User.find_or_create_by(user_name: user_attributes[:username])
  #end

  #def user_attributes
  #  self.username ? self.username : nil
  #end
end
