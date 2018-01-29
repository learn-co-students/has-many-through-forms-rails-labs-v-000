class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user
  def user_id
    self.post.user_ids
  end

  def users
    User.all
  end
end
