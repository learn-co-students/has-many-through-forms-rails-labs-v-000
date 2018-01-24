class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user, reject_if: :blank_user

  def user_name
    user.username
  end

  def blank_user(attributes)
    attributes["username"].blank?
  end


end
