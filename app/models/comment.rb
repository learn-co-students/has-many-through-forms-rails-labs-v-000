class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user

  validates :content, presence: true

  def username
  	try(:user).try(:username)
  end

  def user_attributes=(user_attributes)
    if user_attributes[:username].present?
      @user = User.create(user_attributes)
      self.user = @user
     end
  end
  
end
