class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user


def user_attributes=(user_attribute)
    
      if user_attribute[:username] != ""
      user = User.find_or_create_by(user_attribute)
      self.user_id = user.id
  	  end
  end



end
