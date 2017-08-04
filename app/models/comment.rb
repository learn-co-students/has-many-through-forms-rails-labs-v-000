class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user, reject_if: :all_blank

  # def user=(comment_params)
  #   user = User.unique.find_or_create_by(comment_params)
  #   self.user_id = user.id
  # end

  def user
    User.find_by_id(self.user_id)
  end

  def username
    self.user.username
  end


end
