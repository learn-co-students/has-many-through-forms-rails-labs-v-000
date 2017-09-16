class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  #accepts_nested_attributes_for :user_attributes


  def user_attributes=(user_attributes)
    #category_attributes.values.each do |category_attribute|
    if user_attributes[:username].present?
      user = User.find_or_create_by(user_attributes)
      self.user = user
      self.save
    end
  end

end
