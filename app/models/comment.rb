class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: :reject_attributes

  def user_attributes=(user_attributes)
    self.user = User.find_or_create_by(user_attributes) unless user_attributes[:username].blank?
  end

  def user_attributes
    self.try(:user).try(:name)
  end

  

  def reject_attributes(attributes)
    attributes['username'].blank?
  end

end
