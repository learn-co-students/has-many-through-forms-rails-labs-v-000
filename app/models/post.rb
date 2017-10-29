class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  def commenters
    users = self.comments.each { |comment| comment.user_name }.uniq
  end
end
