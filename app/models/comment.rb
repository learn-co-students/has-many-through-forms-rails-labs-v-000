class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post


  def user_attributes=(user_attributes)
    if user_attributes[:username].present?
      self.build_user(user_attributes)
    end
  end

end
