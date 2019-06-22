class User < ActiveRecord::Base
  has_many :comments
  has_many :posts, through: :comments

  def commented_posts
    commented_on_posts = []
    self.comments.each do |comment|
      commented_on_posts << comment.post
    end
    commented_on_posts.uniq
  end

end
