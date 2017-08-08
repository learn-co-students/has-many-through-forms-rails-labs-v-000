class User < ActiveRecord::Base
  has_many :comments
  has_many :posts, through: :comments

  validates :username, presence: true

  def self.unique
    self.all.uniq! { |a| a[:username] }
  end
end