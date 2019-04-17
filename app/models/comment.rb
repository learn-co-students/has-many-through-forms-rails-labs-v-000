class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  validates :user_id, presence: true
  accepts_nested_attributes_for :user, reject_if: :reject_user?


  def user_id=(user_id)
    if !user_id.blank?
      self.user = User.find(user_id)
    end
  end

  def reject_user?(attributes)
    attributes['username'].blank?
  end

  def user_attributes=(user_attributes)
    if !user_attributes["username"].blank?
      user = User.find_or_create_by(user_attributes)
      self.user = user
    end
  end

  def user_attributes
    self.user ? self.user.username : nil
  end

end
