class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :categories#, reject_if: proc { |attributes| attributes['title'].blank? }

  def unique_users
    arr = []
    self.comments.each do |comment|
      arr << comment.user unless arr.include?(comment.user)
    end
    arr
  end

end
