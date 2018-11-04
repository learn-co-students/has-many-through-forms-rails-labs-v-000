class Category < ActiveRecord::Base
  has_many :post_categories  #adds methods 
  has_many :posts, through: :post_categories
end
