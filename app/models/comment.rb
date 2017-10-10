class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  validates :content, presence: true
  validates :post, presence: true

#  accepts_nested_attributes_for :user, :reject_if => :all_blank

  accepts_nested_attributes_for :user, reject_if: proc { |attributes| attributes['username'].blank? }

  def user_attributes=(user_info)
    if self.user_id.blank?
      user = User.find_or_create_by(user_info)
      self.user = user
    end
  end


end
