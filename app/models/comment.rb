class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user, reject_if: :all_blank

  def user
    User.find_by_id(self.user_id)
  end

  def username
    self.user.username
  end
end
