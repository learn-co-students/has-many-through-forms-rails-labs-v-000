require 'pry'
class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user

  def user_attributes=(user_attributes)
    #binding.pry
    if !self.user_id
      user = User.find_or_create_by(user_attributes)
      self.user = user
      self.save
    end
  end
end
