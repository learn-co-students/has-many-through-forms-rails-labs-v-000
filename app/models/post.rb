class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category|
      category = Category.find_or_create_by(category)
      self.categories << category 
    end
  end


  # def categories_attributes=(category_attributes)
  #   category_attributes.values.each do |i, category|
  #     if category[:name].present?
  #       @category = Category.create(name: category[:name])
  #       self.post_categories.build(:category => @category)
  #     end
  #   end
  # end

end
# {"title"=>"test title", 
#   "content"=>"test content ", 
#   "category_ids"=>["1", "2", ""], 
#   "categories_attributes"=>{"0"=>{"name"=>"category 3 - brand new"}}},
#  "commit"=>"Create Post", "controller"=>"posts", "action"=>"create"}


#  1. need to be able to take these parameters and build a new object
#  2. if cateogire attributes are there, you create a new category out of them


