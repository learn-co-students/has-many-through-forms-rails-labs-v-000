class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :categories

  def categories_attributes=(categories_attributes)
    categories_attributes.values.each do |name_hash|
      unless name_hash["name"].blank?
        category = Category.find_or_create_by(name_hash)
        self.categories << category unless self.categories.include?(category)
      end
    end
  end
end
