class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories
  


  def categories_attributes=(category_attributes)
    # byebug
  	category_attributes.values.each do |category_attribute|
      if category_attribute[:name].present?
  		  categories << Category.find_or_create_by(category_attribute
  			)
      end
  	end
  end

  def category_ids=(ids)
    ids.each do |id|
      if id.present?
        # byebug
        categories << Category.find(id)
  
      end
    end
  end

  def unique_user
  	self.users.uniq
  end


end
