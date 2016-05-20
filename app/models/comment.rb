class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: :all_blank


  def user_create(comment_attributes)
      if comment_attributes != ""
      user = User.find_or_create_by(username: comment_attributes)
      user.comments<<self
      end
    
  end
end
