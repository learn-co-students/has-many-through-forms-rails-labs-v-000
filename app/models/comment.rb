class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user, reject_if: proc { |attributes| attributes['username'].blank? }


  # def users_attributes=(user_attributes)
  #     user_attributes.values.each do |user_attribute|
  #       if user_attributes[:username].present?
  #         user = Category.find_or_create_by(username: user_attributes[:username])
  #         if !self.users.include?(user)
  #           self.user_attributes.build(:user => user)
  #         end
  #       end
  #     end
  #   end
  end
