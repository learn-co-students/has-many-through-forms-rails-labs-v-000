class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  def uniq_commenters
    self.comments.map { |comment| comment.user }.uniq
  end
end
