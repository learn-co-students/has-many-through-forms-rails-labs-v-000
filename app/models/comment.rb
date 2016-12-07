class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: :empty

  def empty(user_hashes)
    user_hashes[:username].blank?
  end

end
