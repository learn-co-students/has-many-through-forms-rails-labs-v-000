class User < ActiveRecord::Base
  has_many :comments
  has_many :posts, through: :comments

  # added for my own sanity
  validates :username, uniqueness:  true
  validates :username, presence: true
end
