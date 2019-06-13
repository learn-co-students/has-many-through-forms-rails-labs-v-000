class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments



  def categories_attributes=(cat_attr)
    cat_attr.values.each do |category|
    !category[:name].empty? ? self.categories << Category.find_or_create_by(name: category[:name]) : nil
    end
  end

end
