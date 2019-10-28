class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
 accepts_nested_attributes_for :user, reject_if: proc { |attributes| attributes['username'].blank? }
 #ashley said this is needed 
 #When creating new comments, we should only create a new user if they filled in that input. accepts_nested_attributes_for has a reject_if option that you can configure to only create new records if all the fields aren't blank.
end
