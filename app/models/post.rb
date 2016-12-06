class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments


  def categories_attributes=(attr)
  	attr.values.each do |attribute|
  		self.categories << Category.find_or_create_by(attribute)
  	end
  end


end
