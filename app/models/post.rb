class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :categories, reject_if: :blank_name

  def categories_attributes=(category_attributes)
    category_attributes.values.each do |attribute|
      unless attribute["name"].blank?
        category = Category.find_or_create_by(attribute)
        self.categories << category
      end
    end
  end 

  def blank_name(attributes)
    attributes["name"].blank?
  end

  def unique_users
    users.uniq
  end
end
