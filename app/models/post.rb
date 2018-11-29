class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories

  def post_commenters
    array = []
    self.comments.each do |comment|
      array << comment.user
    end
    array.uniq!
  end


end
