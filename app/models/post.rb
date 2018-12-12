class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :users, reject_if: :existing_user_blank
  accepts_nested_attributes_for :categories, :comments

  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attribute|
      category = Category.find_or_create_by(category_attribute)
      self.categories << category
    end
  end

  def comment_ids=(ids)
    ids.each do |id|
      comm = Comment.find(id)
      self.comments << comm
    end
  end

  def existing_user_blank(attributes)
    attributes[:comments][:user_id].blank?
  end


=begin
  def username=(name)
    self.user = User.find_or_create_by(username: name)
  end

  def username
     self.user ? self.user.username : nil
  end
=end



  def unique_commenters
    users = []

    self.comments.map do |comment|
      users<< comment.user
    end

    users.uniq
  end



end
