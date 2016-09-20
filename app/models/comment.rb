class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: :all_blank

  def comm_user
    if self.user
      return self.user.username
    else
      return "unkown user"
    end
  end

end
