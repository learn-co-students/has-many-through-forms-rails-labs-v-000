class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attribute|
      # Will only create a category if a name is entered
      if category_attribute[:name].present?
        category = Category.find_or_create_by(category_attribute)
        # Will only add a category to a post if the post doesn't already have that category
        if !self.categories.include?(category)
          self.post_categories.build(category: category )
        end
      end
    end
  end

  def post_users
    self.users.uniq
  end
end
