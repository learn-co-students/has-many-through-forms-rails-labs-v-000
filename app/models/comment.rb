class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: proc { |user_attributes| user_attributes['username'].blank? }

  def user_attributes=(user_attributes)
    self.user = User.create(username: user_attributes[:username]) unless user_attributes[:username] == ""
    end
end
