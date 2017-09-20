class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user, reject_if: :all_blank

   def user_name 
    self.user.username if self.user
  end
  
  validates :user_id, presence: true, allow_blank: true

end
