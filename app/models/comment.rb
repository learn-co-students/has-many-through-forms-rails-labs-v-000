class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: proc { |attr| attr[:username].blank? }

  def user_attributes=(user_attributes)
    user_attributes.values.each do |user_attr|
      user = User.find_or_create_by(username: user_attr)
      self.user = user if self.user.nil?
    end
  end

end
