class User < ActiveRecord::Base
  has_many :comments
  has_many :posts, through: :comments

  def unique_posts
    self.posts.uniq
  end

  def self.select_all
    u = User.new(:username => "Choose User")
    [u] + User.all
  end
end
