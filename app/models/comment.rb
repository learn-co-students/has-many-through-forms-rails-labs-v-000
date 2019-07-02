class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user

  def find_post_by_comment
    Post.find(self.post_id)
  end
end
