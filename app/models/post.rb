class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories

  def categories_attributes=(category_hashes)
    # category_hashes = {"0"=>{"name"=>"new catgory"}, "1"=>"new category 2"}
    category_hashes.each do |i, category_attributes|
      if category_attributes[:name].present?
        #find or create a category regardless of whether this post has it.
        category = Category.find_or_create_by(category_attribute)
        #check if post already includes this category.
        #don't add category to a post if it already has it.
        if !self.categories.include(category)
          #rather than self.categories << category
          self.post_categories.build(category: category)
        end
      end
    end
  end
end
