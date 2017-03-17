class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user

  def user_attributes(attributes)
      raise attributes.inspect
      if attributes[:username].present
      user = User.find_by(username: attributes[:username])
      self.user_id = user.id
    end
 end

end
