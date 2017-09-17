class User < ActiveRecord::Base
  has_many :comments
  has_many :posts, through: :comments

  def user_attributes(user_attributes)
    user_attributes.each do |user_attribute|
      self.users.build(user_attribute)
    end
  end
end
