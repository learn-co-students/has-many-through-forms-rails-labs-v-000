class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: proc { |a| a['username'].blank? }

  def user_attribute=(user_attribute)
    user = user.find_or_create_by(user_attribute)
    self.user = user
  end
end
