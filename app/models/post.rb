class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  # accepts_nested_attributes_for :categories, reject_if: proc { |attributes| attributes['name'].blank? }

  def categories_attributes=(category_attributes)
    category_attributes.values.each do |attribute|
      if attribute[:name] != ""
        category = Category.find_or_create_by(attribute)
        self.post_categories.build(category: category)
      end
    end
  end



end
