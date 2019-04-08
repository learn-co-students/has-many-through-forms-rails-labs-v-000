class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user

  def user_attributes=(attibutes)
    if !attributes[:username].empty?
      self.user.username = User.find_or_create_by(username: attributes[:username])
    end
  end

end
