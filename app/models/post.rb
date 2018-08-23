class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :comments, :users

  def commenters
    commenters = []
    self.comments.each do |comment|
      commenters << comment.user
    end
    commenters.uniq
  end

end
