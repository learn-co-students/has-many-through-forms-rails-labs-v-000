class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :categories, :users  #, :comments

  def categories_attributes=(categories_hashes)
    categories_hashes.each do | idx, category_attributes |
      category = Category.find_or_create_by(name: category_attributes[:name])

      self.post_categories.build(category: category)
    end
  end

  # def comments_attributes=(comment_attributes)
  #   comment = Comment.create(comment_attributes["0"]) # Would like to do this differently
  #   self.comments << comment
  # end

  def unique_commented_user_list
    self.users.uniq
  end

end
