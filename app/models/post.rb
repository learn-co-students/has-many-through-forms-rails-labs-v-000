class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :categories, reject_if: :name.empty?

  def categories_attributes=(categories)
  	categories.each do |key, attributes|
  		self.categories << Category.find_or_create_by(:name => attributes[:name])
  	end	
  end
end
