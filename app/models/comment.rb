class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  #will create a new user as long as :user field is not blank
  accepts_nested_attributes_for :user, reject_if: :all_blank

end
