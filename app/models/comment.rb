require 'pry'

class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: proc { |attributes| attributes.all? { |key, value| key == '_destroy' || value.blank? } }

    def user_attributes=(user_attributes)
        # binding.pry
    # user_attributes.values.each do |user_attribute|
      user = User.find_or_create_by(username: user_attributes[username])

   end

   def user_attributes

   end

   def username=(username)
        User.find_or_create_by(username)
   end

   def username
   end

end

