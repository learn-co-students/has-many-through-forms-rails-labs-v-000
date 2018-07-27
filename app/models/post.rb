require 'pry'
class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
#  accepts_nested_attributes_for :categories -- not needed cause building own writer below
#  accepts_nested_attributes_for :comments
#  accepts_nested_attributes_for :users

  def categories_attributes=(category_hashes)
    # needed so post new form can be used to create categories_attributes
    category_hashes.each do | index, category_attributes |
      if category_attributes[:name].present?
        category = Category.find_or_create_by(name: category_attributes[:name])
        # if category already exists for post, don't add it
        if !self.categories.include?(category)
          self.comments.build(:user => user)
        end
      end
    end
  end

  def comments_attributes=(comment_hashes)
    comment_hashes.each do | index, comment_attributes |
      if comment_attributes[:username].present?
        user = User.find_or_create_by(username: comment_attributes[:username])
        self.comments.build(:user => user, :content => comment_attributes[:content])
      else
        self.comments.build(:user_id => comment_attributes[:user_id], :content => comment_attributes[:content])
      end
    end
  end
  def comments_count
    comments.count
  end

  def unique_users
    users.uniq
  end

  def unique_users_count
    unique_users.count
  end
end
