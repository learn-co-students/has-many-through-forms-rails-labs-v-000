class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories #this adds our #category_ids method (among many others!)
  has_many :comments
  has_many :users, through: :comments


  def categories_attributes=(categories_hashes)
    categories_hashes.each do |i, category_attributes|
      if category_attributes[:name].present?
        category = Category.find_or_create_by(name: category_attributes[:name])
        if !self.categories.include?(category)
          self.post_categories.build(:category => category)
        end
      end
    end
  end
  # a custom version of what rails builds when we use accepts_nested_attributes_for :categories

end
