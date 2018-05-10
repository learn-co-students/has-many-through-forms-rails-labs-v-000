class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories, reject_if: :all_blank

  def categories_attributes=(categories_attributes)
    categories_attributes.values.each do |category_attributes|
      category = Category.find_or_create_by(category_attributes)
      self.categories << category unless self.categories.include?(category)
    end
  end

  def list_categories
    self.categories.collect(&:name).join(", ")
  end

end
