class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  #accepts_nested_attributes_for :categories

  #validates :users, uniqueness: true

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

  def grouped_comments
     grouped_comments_hash = {}
     self.comments.each do |comment|
       if grouped_comments_hash.keys.include?(comment.user.username)
         grouped_comments_hash[comment.user.username] << comment
       else
         grouped_comments_hash[comment.user.username] = [comment]
       end
     end
     grouped_comments_hash
   end
 end
