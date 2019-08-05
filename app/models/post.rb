class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :post_categories
  accepts_nested_attributes_for :comments

  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attribute|
      category = Category.find_or_create_by(category_attribute)
      self.post_categories.build(category: category)
    end
  end

  def comments_attributes=(comments_attributes)
    comments_attributes.values.each do |comment_attribute|
      comment = Comment.find_or_create_by(comment_attribute)
      self.comments.build(comment: comment)
    end
  end

  def unique_commenters
    comment_users = []

    self.comments.each do |comment|
      comment_users << comment.user
    end
    
    comment_users.uniq.compact
    #compact removes nil
  end
end
=begin

   <% @post.unique_commenters.each do |commenter| %>
    <%= commenter.user_name %>
  <% end %>
=end