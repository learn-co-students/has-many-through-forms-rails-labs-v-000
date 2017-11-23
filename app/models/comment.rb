class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: :blank_username

  def user_name
    self.user.username
  end

  def comment_content
    self.content
  end

  def comment_content=(comment_content)
    self.content = comment_content
  end

  # def user_attributes=(user_attributes)
  #   self.build_user(user_attributes)
  # end

  def user_attributes
    self.user
  end

  def blank_username(user_attributes)
    user_attributes[:username].blank?
  end

end
