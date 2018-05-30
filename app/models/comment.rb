class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  validates :user, uniqueness: true

  def user_attributes=(user_attributes)
    user_attributes.values.each do |user_attribute|
      if user_attribute.present?
        user = User.find_or_create_by(username: user_attribute)
        self.user = user
      end
    end
  end
end
