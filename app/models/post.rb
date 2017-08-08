class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  validates :title, presence: true
  validates :content, presence: true

  accepts_nested_attributes_for :categories, reject_if: proc { |attributes| attributes['name'].empty? }
  accepts_nested_attributes_for :users, reject_if: proc { |attributes| not_unique?(attributes['username']) }
  accepts_nested_attributes_for :comments

  def categories=(category_attributes)
    category_attributes.values.each do |attribute|
      category = Category.find_or_create_by(attribute)
      self.categories << category
    end
  end
end
