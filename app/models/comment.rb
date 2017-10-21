class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: :username_blank?

  # proc { |attributes| attributes['username'].blank? }

  # def user_attributes=(user_attributes)
  #   my_user = User.find_or_create_by(user_attributes)
  #   self.user = my_user
  # end

  def username_blank?(user_attributes)
    user_attributes['username'].empty? || user_attributes['username'].blank?
  end

end
