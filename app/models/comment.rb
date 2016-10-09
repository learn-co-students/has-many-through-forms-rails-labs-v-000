class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user, reject_if: :attributes_blank?


  def attributes_blank
     self.user.username.nil? && self.user.email.nil?
  end

end
