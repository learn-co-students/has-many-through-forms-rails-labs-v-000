class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  # accepts_nested_attributes_for :users

  def user_id=(user_info)
    # binding.pry
    self.user = User.find_or_create_by(id: user_info)
    # post = self.user.post
  end

  # def post=
  #   self.post=
  # end

  def user_attributes=(users_hash)
    # users_hashes.each do |i, user_attribute|
    if users_hash[:username].present?
      # if !self.user.exists?
        # binding.pry
        self.user=User.find_or_create_by(username: users_hash[:username])
        # post = self.user.post
      # end
    end
   end
end
