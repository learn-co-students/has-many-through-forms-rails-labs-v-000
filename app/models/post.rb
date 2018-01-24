class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  def categories_attributes=(atts)
  	atts.values.each do |att|
  		if !is_blank?(att)
  			category = Category.find_or_create_by(att)
  			self.categories << category unless self.categories.include?(category)
  		end
  	end 
  end
  
  def categories_list
  	self.categories.uniq.map(&:name).join(", ")
  end
  
  private 
  	 def is_blank?(attribute, str='name')
  	 	attribute[str].blank?
  	 end
  	 	

end
