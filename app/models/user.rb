class User < ActiveRecord::Base
  has_many :comments
  has_many :posts, through: :comments

  def commented_post
    posts = self.comments.collect{|comment| comment.post}.uniq
  end
end
