class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user, reject_if: :all_blank

  # def user_id=(id)
  #   self.user_id = User.find_or_create_by(id: id)
  # end
end
