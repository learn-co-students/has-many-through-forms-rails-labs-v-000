class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :comments

#  def comments_attributes=(comment_hashes)
#  	raise comment_hashes.inspect
#  	comment_hashes.each do |i, comment_attributes|
#      self.comments.build(comment_attributes)
#  	end
 # end



  def categories_attributes=(category_hashes)
  	category_hashes.each do |i, category_attributes|
  		if category_attributes[:name].present?
  			category = Category.find_or_create_by(name: category_attributes[:name])
  			  if !self.categories.include?(category)
  				self.post_categories.build(:category => category) 
  			  end	 
  		end
  	end	
  end


  def commenters
  	commenters = self.comments.collect { |comment| comment.user }
  	commenters.uniq
  end			


end
