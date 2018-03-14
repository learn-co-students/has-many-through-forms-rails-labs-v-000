class User < ActiveRecord::Base
  has_many :comments
  has_many :posts, through: :comments

  accepts_nested_attributes_for :comments, :reject_if => proc { |attributes| attributes[':username'].blank? }

end
