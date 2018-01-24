class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  def categories_attributes=(attributes_hash)
    if attributes_hash["0"].has_value?("")
    else
      attributes_hash["0"].values.each do |val|
        category = Category.find_or_create_by(name: val)
        self.categories << category
      end
    end
  end

  def unique_users_that_commented
    array = []
    if self.comments.empty?
      array << "no comments"
    else
      self.comments.each do |com|
        array << com.user
        array.uniq!
      end
    end
    array
  end

end
