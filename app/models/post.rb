class Post < ActiveRecord::Base
  has_many :post_categories#all this does is add methods
  #what methods????
  #post_categories
  #post_categories.delete
  #collection singular
  #post_category ids=ids
  has_many :categories, through: :post_categories#all this does is add methods
  #collection singular ids=ids
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories

  def categories_attributes=(categories_hashes)
    categories_hashes.each do |index,category_attributes|
      #I need to create a category that's already associated w/ this post
      #and i need to make sure this category is unique by name
      #DO NOT CREATE A CATEGORY IF IT DOESN'T NAME
      if category_attributes[:name].present?
        category = Category.find_or_create_by(name: category_attributes[:name])
          #but also don't add a category to a post if it already has it
          #how do i ck if post has this category already? check console
        if !self.categories.include?(category)
        self.post_categories.build(:category => category)
        # self.categories.find_or_create_by(name: category_attributes[:name])
        end
      end
    end
    # raise categories_hashes.inspect
  end
end
