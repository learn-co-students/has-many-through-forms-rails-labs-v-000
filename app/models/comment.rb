class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user, :reject_if => lambda { |a| a[:username].blank? }

  def user_attributes=(user_attributes)
      user = User.find_or_create_by(user_attributes)
      self.user = user
  end

end
