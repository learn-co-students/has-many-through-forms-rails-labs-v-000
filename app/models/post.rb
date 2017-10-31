class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  # clutch line for rejecting forms
  accepts_nested_attributes_for :categories, reject_if: :all_blank

  def uniq_commenters
    self.comments.map { |comment| comment.user }.uniq
  end

  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attribute|
      category = Category.find_or_create_by(category_attribute)
      self.categories << category
    end
  end
end
