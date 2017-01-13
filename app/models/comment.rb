class Comment < ActiveRecord::Base
  validates_presence_of :content, :user
  belongs_to :user
  belongs_to :post

  def user_attributes=(user_attributes)
    if user_attributes[:username].present?
      user = User.find_or_create_by(username: user_attributes[:username])
      self.user = user
    else
      "Not present"
    end
  end

end
