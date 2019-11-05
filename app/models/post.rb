class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories, reject_if: proc{ |i, att| att[:name].blank?}


  def categories_attributes=(categories_attributes)
    if categories_attributes
      categories_attributes.values.each do |categories_attributes|
        category = Category.find_or_create_by(categories_attributes)
        self.categories << category
      end
    end
  end

  def category_ids=(category_id)
    if !category_id.join.empty?
      category_id.each do |category|
        if category.to_i > 0
          category_object = Category.find(category.to_i)
          self.categories << category_object
        end
      end
    end
  end
end
