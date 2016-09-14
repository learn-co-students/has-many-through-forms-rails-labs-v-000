class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories, :comments

  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attribute|
      category = Category.find_or_create_by(category_attribute)
      self.categories << category
    end
  end

  def comments_attributes=(comment_attributes)
    binding.pry
    comment = Comment.create(comment_attributes["0"]) # Would like to do this differently
    self.comments << comment
  end

  def unique_commented_user_list
    self.users.uniq
  end

end
