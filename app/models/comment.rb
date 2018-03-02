class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user, reject_if: :reject_user

  def user_attributes=(user_attributes)
    
    if !reject_user(user_attributes)
      user = User.find_or_create_by(user_attributes)
      self.user = user
    end
  end

  def reject_user(attributes)
    attributes['username'].blank?
  end
end
