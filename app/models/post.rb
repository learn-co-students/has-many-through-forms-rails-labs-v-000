class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories
  #accepts_nested_attributes_for :comments 

  def categories_attributes=(category_hashes)
    category_hashes.each do |i, category_attributes|
       category = Category.find_or_create_by(name: category_attributes[:name])
        self.post_categories.build(:category => category)
    end
  end

  # def unique
  #   self.users.to_set.to_a
  # end

end
