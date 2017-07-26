class User < ActiveRecord::Base
  has_many :comments
  has_many :posts, through: :comments
  
  def find_comments_by_post(post)
    self.comments.where(post_id: post.id)
  end
end
