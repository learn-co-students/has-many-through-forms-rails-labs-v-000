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
  # accepts_nested_attributes_for :categories # ==> this will add method below.  We've already custom defined the writer below, so we will not use this.

  def categories_attributes=(categories_hashes)
    # {
    #   "0"=>{"name"=>"new category 1 "}, 
    #   "1"=>{"name"=>"new category 2"}
    #   }

    # how to create a category for each of the hashes inside the categories_hashes hash

    categories_hashes.each do |i, category_attributes|
      # need to create a category that is already associated with this post & need to make sure that this category doesn't already exist by name


      # DO NOT CREATE CATEGORY IF IT DOESN'T HAVE A NAME
      if category_attributes[:name].present?
        #DON'T ADD CATEGORY TO POST IF IT ALREADY EXISTS; check to see if the category already exists in post.

        category = Category.find_or_create_by(name: category_attributes[:name])
        if !self.categories.include?(category)
          self.post_categories.build(:category => category) 
        end
      end
    end
  end


end
