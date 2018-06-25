class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
   accepts_nested_attributes_for :users
  # accepts_nested_attributes_for :categories => creates categories_attributes method like below

def comment_contents
  self.comments
end

# def user
#   self.comments.each
# end

  def users_attributes=(users_hashes)
    users_hashes.each do |i, user_attributes|
      if user_attributes[:username].exists?
        user = User.find_or_create_by(username: user_attributes[:username])
        if !self.users.exists?
          self.comments.build(user: user)
        # self.post_categories.build(category: category)
        end
      end
    end
  end
def categories_attributes=(categories_hashes)
  categories_hashes.each do |i, category_attributes|
    if category_attributes[:name].present?
      category = Category.find_or_create_by(name: category_attributes[:name])
      if !self.categories.include?(category)
      self.post_categories.build(category: category)
      end
    end
  end
end

# def comment_content=(comments)
#   comments.each do |
#
# end

end
