class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  validates :user, presence: true
  validates :content, presence: true

  accepts_nested_attributes_for :user, { :reject_if => :all_blank }
end
