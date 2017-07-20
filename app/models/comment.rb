require 'pry'
class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: :all_blank

  def display_comment
    "#{self.user.username} says: #{self.content}" if self.user
  end
end
