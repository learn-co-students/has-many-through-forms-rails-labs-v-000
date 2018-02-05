class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories

  def category_ids=(ids)
    ids.each do |id|
      category = Category.find_or_create_by(id) unless id.nil?
      self.categories << category if !self.categories.include?(category)
    end
  end

  def categories_attributes=(attrs)
    attrs.values.each do |attr|
      if !attr[:name].nil?
        self.categories << Category.find_or_create_by(attr)
      end
    end
  end

end
