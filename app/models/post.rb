class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories #this just adds methods --> #category_ids=ids
  has_many :comments
  has_many :users, through: :comments

  # accepts_nested_attributes_for :categories #adds the mmethod writer that we wrote with custom(?) parts so we don't need this


# has_many :categories --- adds method of category.id (google has_many active record methods, collection_singular.ids)
# #post_categories
#  #post_categories<<
# #post_categories.delete
# #post_category_ids=ids


  def categories_attributes=(categories_hashes)
    # raise categories_hashes.inspect
    # {"0"=>{"name"=>"new cat 1"}, "1"=>{"name"=>new cat 2"}}
    categories_hashes.each do |index, category_attributes|
      #need to create a category that is alrady assoicated with this post and make sure that this cateogry doesn't already exist

      #DO NOT CREATE A CATEGOERY if it doesn't have a name
      if category_attributes[:name].present?
        # also don't add a category if it already has it

        category = Category.find_or_create_by(name: category_attributes[:name])
          if !self.categories.include?(category)
            # post_categories
            # self.categories<< category
            self.post_categories.build(:category => category)
          end
      end
    end
  end
end
