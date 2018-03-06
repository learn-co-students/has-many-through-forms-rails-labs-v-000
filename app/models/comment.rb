class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: :all_blank

  def users_attributes=(attr)
    attr.values.each do |a|
      user = User.find_or_create_by(a)
      self.user = user
    end
  end
end
 