class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user, reject_if: proc{|attribute| attribute[:username].blank?}

  # def user_attributes=(user)
  #   binding.pry
  #   if !user.values.join.empty?
  #     new_user = User.find_or_create_by(user)
  #     new_user.comments << self
  #   end
  # end



end
