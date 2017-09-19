class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories

  def categories_attributes=(cats)
    cats.values.each do |cat|
      new_cat = Category.find_or_create_by(cat)
      self.categories << new_cat
    end
  end

  def unique_commenters
    self.comments.map {|c| c.user}.uniq.reject {|u| u.nil?}
  end

end
