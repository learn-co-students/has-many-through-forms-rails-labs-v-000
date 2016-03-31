class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :categories, reject_if: :is_blank?

  def categories_attributes=(atts)
  	atts.values.each do |att|
  		category = Category.find_or_create_by(att)
  		self.categories << category unless self.categories.include?(category)
  	end 
  end
  
  private 
  	 def is_blank?(category_attribute)
  	 	binding.pry
  	 	category_attribute['name'].blank?
  	 end
  	 	

end
