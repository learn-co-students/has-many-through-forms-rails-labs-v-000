class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user, reject_if: :username_blank?

  def username_blank?(user_attr)
    user_attr[:username] == ""
  end

end
