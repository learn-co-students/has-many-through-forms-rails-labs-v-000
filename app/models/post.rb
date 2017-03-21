class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  #accepts_nested_attributes_for :categories

  def category_ids=(ids)
    ids.delete("")
    ids.each do |id|
      category = Category.find_by(id: id)
      if !self.categories.include? (category)
      self.categories << category
      end
    end
  end

  def categories_attributes=(hash)
    hash.each do |index, attributes|
      if attributes[:name].present?
      category = Category.find_or_create_by(name: attributes[:name])
      end
      if !self.categories.include?(category)
      self.post_categories.build(:category => category)
      end
    end
  end




end
