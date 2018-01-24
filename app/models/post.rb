class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories
  validates :name,  uniqueness: true

  def categories_attributes=(categories_hashes)
  	# {"0"=>{"name"=>"new cat"}, "1"=>{"name"=>"new cat1"}}
  	# raise categories_hashes.inspect
  	categories_hashes.each do |i, category_attributes|

  		category = Category.find_or_create_by(name: category_attributes[:name])
  	# self.categories.build --> not right -- 
  	# self.categories <<category # but this is inefficient -- it will return all categories 
  	# ??What table gets a new row when we associate a post and a category -- > post_categoru!! 
  	# thus: 
  		self.post_categories.build(:category => category)
  	# instantaiate instance of the join model-- and pass in the category. 
    	end
  	end
end
