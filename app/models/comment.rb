class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user, reject_if: proc { |attributes| attributes['username'].blank? }

  def users_attributes=(user_attributes)
    user_attributes.values.each do |user_attr|
      user = User.find_or_create_by(user_attr)
      self.comments.build(:user => user)
    end
  end
end
