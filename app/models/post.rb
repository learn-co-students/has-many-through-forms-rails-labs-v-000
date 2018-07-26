class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories
  accepts_nested_attributes_for :comments
  accepts_nested_attributes_for :users

  def comments_count
    comments.count
  end

  def unique_users
    users.uniq
  end

  def unique_users_count
    unique_users.count
  end
end
