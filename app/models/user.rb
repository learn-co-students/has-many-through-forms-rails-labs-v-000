class User < ActiveRecord::Base
  has_many :comments
  has_many :posts, through: :comments

  def comment_content=(content)
    self.comment = Comment.find_or_create_by(content: content)
  end

  def comment_content
   self.comment ? self.comment.content : nil
  end


end
