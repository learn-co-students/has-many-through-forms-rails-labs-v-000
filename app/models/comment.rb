class Comment < ActiveRecord::Base
  #validates :user_id, :post_id, presence: true
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: :all_blank
end
