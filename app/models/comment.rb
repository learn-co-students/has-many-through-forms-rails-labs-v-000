class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def user_id=(user_id)
    # binding.pry
  	self.user = User.find(user_id)
  end

  def user_attributes=(user_attributes)
    if user_attributes[:username] != ""
    	self.user = User.find_or_create_by(user_attributes)
    end 
  	# self.user.update(email: user_attributes[:email])
  	
  end

  def post_id=(post_id)
    self.post = Post.find(post_id)
  end 
end 