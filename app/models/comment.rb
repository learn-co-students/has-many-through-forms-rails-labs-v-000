class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, allow_destroy: true, reject_if: proc {|attributes|
    attributes.all? {|k,v| v.blank?}
  }
=begin
  def user_attributes=(user_attributes)
    user_attributes.values.each do |user_attribute|
      user = User.find_or_create_by(username: user_attribute)
      user.comments << self
    end
  end
=end
end
