class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def users_attributes=(user_attributes)
    binding.pry
    user_attributes.values.each do |user_attribute|
      if user_attribute[:username].present?
        user = User.find_or_create_by(user_attribute)
        if !self.users.include?(user)
          self.comments.build(:user => user)
        end
      end
    end
  end

end
