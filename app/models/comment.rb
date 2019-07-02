class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def find_post_by_comment
    Post.find(self.post_id)
  end
end
