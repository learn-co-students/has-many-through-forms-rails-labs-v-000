class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: proc { |attributes| attributes['username'].blank? }

  def user_attributes=(user_attributes)
    new_user = User.new(user_attributes)
    self.user = new_user
  end

  def user_attributes
    self.user ? self.user.username : nil
  end

end
