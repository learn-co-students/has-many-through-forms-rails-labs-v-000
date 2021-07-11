class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user, reject_if: proc {|attributes| attributes['username'].blank?}

  # def user_unique
  #   self.user.username.first
  # end


end
