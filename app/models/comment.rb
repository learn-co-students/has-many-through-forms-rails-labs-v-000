class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user
  
  def user=(email)
    self.user = User.find_by(email: email)
  end


  def user_attributes=(user_attributes)
    user_attributes.each do |user_attribute|
      user = User.find_or_create_by(user_attribute)
    end
  end

  def user_attributes=(user_attributes)
    user_attributes.each do |user_attributes|
      self.user.build(user_attributes)
    end
  end
  
end
