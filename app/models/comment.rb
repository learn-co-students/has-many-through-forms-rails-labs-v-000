class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user

  def user_attributes=(user_attribute)
    user_attribute.values.each do |users|
      if users != ""
        user_instance = User.create(username: users)
        self.user = user_instance
      end
    end
  end

end
