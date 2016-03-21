class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: :no_new_user

  def no_new_user(user_attributes)
    user_attributes[:username].blank? 
  end


end
