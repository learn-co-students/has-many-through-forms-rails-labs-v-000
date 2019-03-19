class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: :reject_user, allow_destroy: true

  def user_attributes=(user_attribute)
    user = User.find_or_create_by(:username => user_attribute[:username])
    self.user = user
  end


  def reject_user(attributes)
    attributes['user'].blank?
  end
end
