class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :categories, reject_if: :reject_categories

  def categories_attributes=(categories_attributes)
    # if !reject_categories(categories_attributes)
      categories_attributes.values.each do |category_attribute|
        category = Category.find_or_create_by(category_attribute)

        self.post_categories.build(:category => category)
        # could also do self.categories << category but this is more efficient
      end
    # end
  end

  def reject_categories(attributes)
    attributes["0"]['name'].blank?
  end

end
