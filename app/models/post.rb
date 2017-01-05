class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  # accepts_nested_attributes_for :categories
  def categories_attributes=(category_attributes)
    category_attributes.each do |k, atts|
      category = Category.find_or_create_by(atts)
      self.categories << category
    end
  end

  def unique_commenters
    # binding.pry
    commenters = []

    self.comments.each do |comment|
      commenters << comment.user unless comment.user_id.nil?
    end

    commenters.uniq
  end
end
