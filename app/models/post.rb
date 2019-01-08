class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :categories


  def categories_attributes=(attributes)
    attributes.values.each do |att|
    cat = Category.find_or_create_by(att)

    self.categories << cat
    end
  end
end
