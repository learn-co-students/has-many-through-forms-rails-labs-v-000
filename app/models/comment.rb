class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user, :reject_if => lambda {|user_attrs| user_attrs[:username].blank? }

  def commenter
    self.user.username
  end

  def post_title
    self.post.title
  end

  def user_attributes=(user_attributes)
    if !self.user_id
      user = User.find_or_create_by(user_attributes)
      self.user = user
    end
  end

end
