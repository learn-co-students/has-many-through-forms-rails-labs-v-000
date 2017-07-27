class User < ActiveRecord::Base
  has_many :comments
  has_many :posts, through: :comments
  
  def find_comments_by_post(post)
    self.comments.where(post_id: post.id)
  end

  def self.find_or_create_by(username)
    self.find_by(username: username) || self.create(username: username)
  end
end
