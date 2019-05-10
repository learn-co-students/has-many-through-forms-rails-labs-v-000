class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: :reject_comment

  def reject_comment(attributes)
    attributes['username'].blank?
  end

end
