class User < ActiveRecord::Base
  has_many :comments
  has_many :posts, through: :comments

  def user_comments
    self.comments.map { |comment| comment.content }
  end
end
