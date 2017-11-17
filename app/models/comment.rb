class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: :reject_users

  def reject_users(attrs)
    attrs[:username].blank?
  end

  def post_title
    self.post.title
  end

  def user_name
    self.user.username
  end

end
