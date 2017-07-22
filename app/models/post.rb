class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories
  accepts_nested_attributes_for :comments

  def unique_users
    users = []
    self.comments.each do |comment|
      users << comment.user
    end
    users.uniq
  end
end
