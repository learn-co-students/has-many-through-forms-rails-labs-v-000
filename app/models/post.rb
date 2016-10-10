class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :categories
  accepts_nested_attributes_for :comments

  # attr_reader :comment_content

  def categories_attributes=(category_attributes)
    # binding.pry
    category_attributes.values.each do |cat_attr|
      category = Category.find_or_create_by(cat_attr)
      self.categories << category
    end
  end

  def comments_attributes=(comments_attributes)
    # binding.pry
    comments_attributes.values.each do |cmt_attr|
      comment = Comment.create(cmt_attr)
      self.comments << comment
    end
  end

  def user_ids=(user_ids)
    
    self.users << User.find(users)
  end


end
