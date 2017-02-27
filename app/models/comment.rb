class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: :all_blank

  def time
    return unless created_at
    "#{created_at.strftime("%B %-d, %Y")} at #{created_at.strftime("%k:%M")}"
  end

  def username
    try(:user).try(:username)
  end

  # def user_attributes=(user_attributes)
  #   self.user = User.find_or_create_by(user_attributes)
  # end
end
