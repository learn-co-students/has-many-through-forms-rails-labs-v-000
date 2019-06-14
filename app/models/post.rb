class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :comments, reject_if: proc { |attributes| attributes['content'].blank? }

  def categories_attributes=(category_hash)
    category_hash.each do |index, category|
      category = Category.find_or_create_by(:name => category[:name])
      self.post_categories.build(:category => category)
    end
  end

  def username=(username)
    self.username = User.find_or_create_by(username: username)
  end

  def username
    self.username ? self.username : nil 
  end
end
