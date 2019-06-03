class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  def category_attributes=(attributes)
    if attributes[:name].present?
      category = Category.find_or_create_by(name: attributes[:name])
      self.post_categories.build(category_id: category.id)
      #when this instance of post gets saved...will the post_category update to include the post_id?
    end
  end


end
