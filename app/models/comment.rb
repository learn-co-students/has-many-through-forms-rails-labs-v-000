class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  #accepts_nested_attributes_for :user, reject_if: proc { |attributes| attributes['username'].blank? }

  def username
    self.user.username
  end

  def user_attributes=(user_attributes)
    if !user_attributes[:username].blank?
      self.build_user(user_attributes)
    end
  end

end
