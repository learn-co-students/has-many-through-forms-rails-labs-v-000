class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user, :reject_if => :all_blank

  def username
    self.user.username if self.user
  end

end
