class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: :all_blank

  def user_attributes=(attr_hash)
    unless attr_hash[:username].empty?
      self.user = User.find_or_create_by(attr_hash[:username])
    end
  end
end