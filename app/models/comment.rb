class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: :rejected_user

  def rejected_user(user_attributes)
    attributes['content'].blank? || !attributes['user_id'].blank?
  end



end
