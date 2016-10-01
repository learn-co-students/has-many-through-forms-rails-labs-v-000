class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :comments, reject_if: :reject_comments

  def categories_attributes=(category_attributes)
    category_attributes.each do |i, category_attribute|
      category = Category.find_or_create_by(name: category_attribute[:name])
      # self.categories << category # doesn't work
      self.post_categories.build(:category => category)
    end
  end

  def reject_comments
    binding.pry
  end

  def all_unique_commentors(post)
    names = []
    post.comments.each do |comment|
      if comment.user
        names << comment.user.username unless names.include?(comment.user.username)
      end
    end
    @names
  end

end
