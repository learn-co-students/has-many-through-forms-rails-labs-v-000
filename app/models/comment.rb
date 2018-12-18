class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user

  def user_attributes
    @user_attributes
  end

  def user_attributes=(username)   
    username.values.each do |name|
      if name != ""
        user = User.find_or_create_by(username: name)
        self.user = user 
      end   
    end
  end

end
