class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  
  accepts_nested_attributes_for :categories

  def unique_user
    array_of_users_that_have_commented = self.comments.map {|c| c.user}
    array_of_users_that_have_commented.uniq
  end

end
