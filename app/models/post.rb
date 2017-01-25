class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :categories
  accepts_nested_attributes_for :users


  # need to think of a proper reject_if method
  # accepts_nested_attributes_for :comments, reject_if: :username

  def category_attributes=(category_attributes)
    category_attributes.values.each do |category_attribute|
      category = Category.find_or_create_by(category_attribute)
      self.categories << category
    end
  end

  def unique_commenters
    commenters = []
    self.comments.each do |comment|
      commenters << comment.user
    end
    commenters = commenters.uniq
    commenters
  end

end
