class User < ActiveRecord::Base
  has_many :comments
  has_many :posts, through: :comments

  validates :username, presence: true
  validates :email, presence: true
  validates :username, uniqueness: true
  validates :email, uniqueness: true
  
end
