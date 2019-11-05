class User < ActiveRecord::Base

  has_many :comments
  has_many :posts, through: :comments

  def user_attributes(user_attributes)
    user_attributes.each do |u_a|
      self.users.build(u_a)
    end
  end
end
