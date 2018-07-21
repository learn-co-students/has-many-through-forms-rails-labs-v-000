class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :categories

  def category_ids=(ids)
    ids.each do |id|
      if id != ""
        category = Category.find(id)
        categories << category
      end
    end
  end

  def commenters
    commenters = []

    self.comments.each do |c|
      commenters << User.find(c.user_id)
    end

    commenters.uniq
  end
end
