class User < ActiveRecord::Base
  has_many :comments
  has_many :posts, through: :comments

  def valid_comments
    self.comments.select do |comment|
      if comment.post_id != nil
        comment
      end
    end
  end
end
