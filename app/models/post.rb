class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :categories
  # accepts_nested_attributes_for :comments

  def categories_attributes=(category_hashes)
    category_hashes.values.each do |category_attribute|
      category = Category.find_or_create_by(category_attribute)
      # self.categories << category
      # that's inefficient, because it will return all categories, and that could be a lot, so instead, this is more surgical.  does only what it needs to do:
      self.post_categories.build(:category => category)
    end
  end

end
