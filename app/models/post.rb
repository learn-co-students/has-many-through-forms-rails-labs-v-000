class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories
  accepts_nested_attributes_for :comments, reject_if: proc { |attributes| attributes['content'].blank? }

  def category_ids=(category_attributes)
    category_attributes.each do |category_attr|
      if category_attr != ""
        category = Category.find_or_create_by(category_attr)
        self.categories << category
    end
  end
  end


  def category_attributes=(category_attributes)
    category_attributes.values.each do |category_attr|
      category = Category.find_or_create_by(category_attr)
      self.categories << category
    end
  end

  def comment_attributes=(comment_attributes)
    comment_attributes.values.each do |comment_attr|
      comment = Comment.find_or_create_by(comment_attr)
      self.comments << comment
    end
  end



end
