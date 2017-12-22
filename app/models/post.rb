class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  def categories_attributes=(category)
    category.each do |k, category_name|
      @category = Category.find_or_create_by(category_name)
      self.categories << @category
    end
  end

  def user_attributes(users)
    binding.pry
  end


end
