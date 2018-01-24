class Post < ActiveRecord::Base
  has_many :post_categories #=> methods #post_categories, post_categories<<, post_category_ids=
  has_many :categories, through: :post_categories  #adds category_ids method
  has_many :comments
  has_many :users, through: :comments
  
  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attribute|
      category = Category.find_or_create_by(category_attribute)
      self.post_categories.build(:category => category)
    end
  end

 




end
