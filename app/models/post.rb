class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :comments 

  def commments_attributes=(commments_attributes)
    commments_attributes.values
  end
end
