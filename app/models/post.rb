class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments


  def categories_attributes=(category_attributes)
    #{"0"=>{"name"=>"sad"}}
    # FIND or CREATE the category regardless of whether this post has it... 
    category_attributes.values.each do |category_attribute|
      category = Category.find_or_create_by(category_attribute)
      self.post_categories.build(:category  => category)
      
      #this is inefficient because it'll return all categories 
      #self.categories << category
    end
  end

end
 