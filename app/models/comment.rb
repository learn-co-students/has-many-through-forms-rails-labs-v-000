class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  validates :user, uniqueness: true

  def user_attributes=(user_hash)
    user_hash.each do |i, user_attribute|
      if user_attribute.present?
        user = User.find_or_create_by(username: user_attribute)
        self.user = user
      end
      #binding.pry
    end

  end

end
