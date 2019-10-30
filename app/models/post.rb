class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :comments, reject_if: :all_blank
  accepts_nested_attributes_for :categories

  def comments_attributes=(comment_attributes)
    comment_attributes.values.each do |comment_attribute|
      comment = Category.find_or_create_by(comment_attribute)
      self.comments << comment
    end
  end

 
end
