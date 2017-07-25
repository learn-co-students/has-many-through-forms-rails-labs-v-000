class User < ActiveRecord::Base
  has_many :comments
  has_many :posts, through: :comments

  def post_count
    self.posts.count
  end

end
