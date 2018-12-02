class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  validates :user, uniqueness: true

  def user_attributes=(user)
    user.each do |category, value|
    if value.present?
      user = User.find_or_create_by(username: value)
      self.user = user
    end
  end
end
end
