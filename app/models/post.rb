class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories, reject_if: :all_blank

  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attr|
      self.categories << Category.find_or_create_by(category_attr)
    end
  end

end
