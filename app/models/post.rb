class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  def category_ids=(category_ids)
  		# binding.pry
	  category_ids.each do |category_id|
  		if category_id != ""
	  		self.categories << Category.find(category_id)
	  	end  
	  end 
  end 

  def categories_attributes=(categories_attributes)
  	categories_attributes.each do |i, category_attributes|
  		if category_attributes != ""
  			self.categories << Category.find_or_create_by(name: category_attributes[:name])
  		end 
  	end 
  end 
end
