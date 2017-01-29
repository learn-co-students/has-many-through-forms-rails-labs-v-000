class User < ActiveRecord::Base
  has_many :comments
  has_many :posts, through: :comments

  def posts_commented_on
    self.comments.collect {|x| x.post }.uniq
  end
end
