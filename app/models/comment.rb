class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user

  accepts_nested_attributes_for :user, reject_if: proc { |attr| attr['username'].blank? }
end
