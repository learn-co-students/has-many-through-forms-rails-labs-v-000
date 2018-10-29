class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories

  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attribute|
      category = Category.find_or_create_by(category_attribute)
      self.categories << category
    end
  end

  def commentors #Better method of users_that_commented
    self.comments.collect{|comment| comment.user}.uniq
  end

  def users_that_commented    
    user_ids = []
    users = []

    comments = Comment.where("post_id = ?", self.id)

    comments.each do |c|
      if !user_ids.include?(c.user_id)
        user_ids << c.user_id
      end
    end

    user_ids.each do |u|
      users << User.find(u)
    end
    users
  end
end
