class User < ActiveRecord::Base
  has_many :comments
  has_many :posts, through: :comments

  def commented_posts
    commented_posts = self.comments.collect do |c|
      c.post
    end
    commented_posts.uniq
  end
end
