class User < ActiveRecord::Base
  has_many :comments
  has_many :posts, through: :comments

  def user_comments
    self.comments
  end

  def user_posts
    self.posts.uniq
  end
end
