class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :categories

  def formatted_comments
    comment_data = []
    self.comments.each do |comment|
      comment_data << "#{self.comments[0].user.username} says: #{comment.content}"
    end
    comment_data
  end

end
