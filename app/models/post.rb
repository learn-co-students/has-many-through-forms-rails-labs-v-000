class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :categories

  def categories_attributes=(attr)
    attr.each do |_, attribute|
      self.categories << Category.find_or_create_by(name: attribute[:name])
      self.categories.last.update(attribute)
    end
  end
end
