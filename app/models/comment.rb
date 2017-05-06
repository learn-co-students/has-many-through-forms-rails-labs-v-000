class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user

  def user_attributes=(user_attributes)
    user_attributes.values.each do |attr|
      self.user = User.find_or_create_by(username: attr) if !attr.empty?
    end
  end
  
  def username
    self.try(:user).try(:username)
  end
end
