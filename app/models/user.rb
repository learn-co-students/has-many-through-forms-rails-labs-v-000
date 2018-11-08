class User < ActiveRecord::Base
  has_many :comments
  has_many :posts, through: :comments

  validates_presence_of :username
  validates_uniqueness_of :username
end
