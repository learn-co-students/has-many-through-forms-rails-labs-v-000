class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :categories, reject_if: :all_blank

  def categories_attributes=(categories_attributes)
    categories_attributes.each do |i, category_attributes|
      if category_attributes[:name].present?
        category = Category.find_or_create_by(name: category_attributes[:name])
        self.post_categories.build(:category => category) unless self.categories.include?(category)
      end
    end
  end
end
