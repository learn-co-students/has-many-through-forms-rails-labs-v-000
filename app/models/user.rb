class User < ActiveRecord::Base
  has_many :comments
  has_many :posts, through: :comments

  validates :username, presence: true

  def not_unique?(username)
    if User.all.select {|user| user["username"] == username}
      true
    end
  end

  def self.unique
    self.all.uniq! {|a| a[:username]}
  end

end
