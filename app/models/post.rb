class Post < ActiveRecord::Base
  has_many :post_categories #=> All this does is add methods
  #  #post_categories
  #  #post_categories <<
  #  #post_categories.delete
  #  #post_category_ids=ids
  has_many :categories, through: :post_categories #=> All this does is add methods
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :comments


  def categories_attributes=(categories_attributes)
    # {"0"=>{"name"=>"new category1"}, "1"=>{"name"=>"new 2"}}
    # how would I create a category for each of the hashes inside categories_hashes?
    categories_attributes.values.each do |category_attribute|
      if category_attribute[:name].present?
        category = Category.find_or_create_by(name: category_attribute[:name])
        if !self.categories.include?(category)
          self.post_categories.build(:category => category) #=> Do i need this?
      # self.categories << category
        end
      end
    end
  end
end
      # Create a new category if this post doesnt already have this category 
      # Find or create the category regardless of whather this post has it...


      # DO NOT CREATE A CATEGORY IF IT DOESN'T HAVE A NAME
      # if category_attributes[:name].present?
        # Don't add a cateogry to a post if it already has it

        # category = Category.find_or_create_by(name: category_attributes[:name])
        # if !self.categories.include?(category)
          # self.categories << category #=> this isn't ideal and is inefficient bc it will return all categories
          # self.post_categories.build(:category => category)
          # self .categories.find_or_create_by(name: category_attributes[:name])
          # I need to create a category that is already associated with this post 
          # and I need to make sure that this category already doesn't exist by name
#         end
#       end
#     end
#   end

# end
