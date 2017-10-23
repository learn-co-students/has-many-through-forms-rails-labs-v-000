class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, -> { distinct }, through: :comments


  # def users(usernames_hash)

  def categories_attributes=(categories_attributes_hash)
    # raise categories_attributes_hash.inspect
    categories_attributes_hash.each do |i, category_attributes|
      if !category_attributes[:name].empty?
        self.categories.build(category_attributes)
      end
    end
  end
end
