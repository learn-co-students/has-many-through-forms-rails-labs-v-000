class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  # def user_name=(name)
  #   #find that user by username
  #   self.user = User.find_by(username: name)
  # end

  def user_attributes=(user_attributes)
    # user_attributes = {
    #   :name => "Username",
    #   :email => "user@email.com"
    # }
    # create a user by username and set attributes
    self.user = User.where(:username => user_attributes[:username]).first_or_create do |u|
      u.username = user_attributes[:email]
    end
  end
  
end
