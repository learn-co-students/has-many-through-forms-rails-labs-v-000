class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: :all_blank#this prevented empty username entries from post#show page
  #what does this add to methods?
end
