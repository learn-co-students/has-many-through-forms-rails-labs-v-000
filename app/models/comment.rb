class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user, reject_if: :already_exists

  def user_name
    user.username
  end

end
