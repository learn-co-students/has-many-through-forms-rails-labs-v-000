class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  #accepts_nested_attributes_for :categories, reject_if: :all_blank
  # Use the method below instead of the line above in this case, as it includes a lot of customizations
  # These customizations are not present in the line above

  def categories_attributes=(categories_hashes)
    # {"0"=>{"name"=>"new_category_1"}, "1"=>{"name"=>"new_category_2"}}
    # Creating a category for each of the hashes, inside category_hashes
    categories_hashes.each do |i, categories_attributes|
      # Do not create a category if it doesn't have name
      if categories_attributes[:name].present?
        # Create a new category only if it doesn't already exist
        category = Category.find_or_create_by(name: categories_attributes[:name])
        # Only add the category to the post if it doesnt have it already
        if !self.categories.include?(category)
          # This usage below creates a category that is already associated with the post
          # Rather than using self.categories << category
          self.post_categories.build(category: category)
        end
      end
    end
  end

end
