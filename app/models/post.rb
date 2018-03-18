class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  # accepts_nested_attributes_for :categories

  # Custom Attribute Writer
  def categories_attributes=(categories_hash)
    #  {"0"=>{"name"=>"Romance"}, "1"=>{"name"=>""}}
    # raise categories_attributes.inspect
    categories_hash.each do |index, category_attribute|
      # find or create if post doesn't have this category BAD
      # self.category.find_or_create_by(name: category_attribute[:name])
      # find or create if this post doesn't exist yet GOOD
      if category_attribute[:name].present?
        category = Category.find_or_create_by(name: category_attribute[:name])
        if !self.categories.include?(category)
          self.post_categories.build(:category => category)
        end
      end
    end
  end
end
