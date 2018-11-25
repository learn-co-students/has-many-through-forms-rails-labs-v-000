require 'pry'
class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user
  #
  def user_attributes=(attr)
    if self.user ==nil
        user = User.find_or_create_by(attr)
        self.user = user
      end
  end
end
