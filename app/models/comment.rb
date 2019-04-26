class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user, reject_if: :all_blank

  # def user_attributes=(user_attributes)
  #   user_attributes.values.each do |user_attribute|
  #     user = User.find_or_create_by(user_attribute)
  #     binding.pry
  #     self.user.update(user)
  #
  #   end
  # end

  # def user_attributes=(user_attributes)
  #
  #   user = User.find_or_create_by(user_attributes)
  #   self.user.update(user)
  # end
end
