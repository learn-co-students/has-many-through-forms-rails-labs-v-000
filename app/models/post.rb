# Illustration of this workspace is available here:
# https://i.imgur.com/sEiHNRX.png
class Post < ActiveRecord::Base
  has_many :comments
  has_many :users, through: :comments
  has_many :post_categories
  # Here are a list of methods discussed in the video on this lab:
  # post_categories #=> Post.find(1).post_categories
  # post_categories <<
  # post_categories.delete
  # post_category_ids
  has_many :categories, through: :post_categories
  # category_ids

  def categories_attributes=(category_attributes)
    # raise category_attributes.inspect #=> This will tell me the value being passed into this method
    category_attributes.values.each do |category_attribute|
    # raise category_attributes.values.inspect #=> "categories_attributes"=>{"0"=>{"name"=>"New Category 1"}, "1"=>{"name"=>"New Category 2"}}
      category = Category.find_or_create_by(category_attribute)
      #this is inefficient because it will return all categorties!
      #self.categories << category

      # this is the right way to do it
      self.post_categories.build(:category => category)
    end
  end

end
