class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: :reject_user


  def reject_user(user_attributes)
     user_attributes['username'].blank?
   end

  def user_attributes=(user_attributes)
    new_user = User.find_or_create_by( user_attributes)
    self.user = new_user
end



end
