class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :categories, reject_if: proc { |attributes| attributes['name'].blank? }

  def categories_attributes=(attr)
    attr.values.each do |a|
      category = Category.find_or_create_by(a)
      self.categories << category
    end
  end
end
