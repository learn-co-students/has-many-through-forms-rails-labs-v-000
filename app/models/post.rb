class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories

  has_many :comments
  has_many :users, through: :comments

  def categories_attributes=(categories_hashes)
    categories_hashes.each do |i, category_attributes|
      if category_attributes[:name].present?
        category = Category.find_or_create_by(name: category_attributes[:name])
        if !self.categories.include?(category) 
        self.post_categories.build(:category => category)
        end
      end
    end
  end

  def unique_users
    comment_users = self.comments.collect{|comment| comment.user}
    comment_users.uniq
  end
 
end