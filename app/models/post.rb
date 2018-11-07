class Post < ActiveRecord::Base
  has_many :post_categories #methods are added
    #post_catgories
    #post_categories<<
    #post_categories.delete
    #collection_singular_ids ==> post_category_ids=ids

  has_many :categories, through: :post_categories #methods are added
    #category_ids
  has_many :comments
  has_many :users, through: :comments

  def categories_attributes=(categories_hashes)
    # {
    #   "0"=>{"name"=>"new category 1 "}, 
    #   "1"=>{"name"=>"new category 2"}
    #   }

    # how to create a category for each of the hashes inside the categories_hashes hash

    categories_hashes.each do |i, category_attributes|
      # need to create a category that is already associated with this post & need to make sure that this category doesn't already exist by name
      category = Category.find_or_create_by(name: category_attributes[:name])
      self.categories << category
      self.post_categories.build(:category => category) 
      # PICK UP @ 53:40
      
    end
  end


end
