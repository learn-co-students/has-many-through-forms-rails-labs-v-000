class User < ActiveRecord::Base
  has_many :comments
  has_many :posts, through: :comments

  def unique_posts
    self.posts.uniq
  end
end
