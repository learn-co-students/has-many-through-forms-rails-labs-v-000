class Post < ActiveRecord::Base
  validates_presence_of :title, :content

  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :categories,
  reject_if: proc { |attributes| attributes['name'].blank? }

end
