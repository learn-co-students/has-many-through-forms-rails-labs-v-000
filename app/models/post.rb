class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

 # def commentors
 #   self.comments.map{|c| c.user}.uniq
 # end

 # def category_ids=(attributes)
 #   attributes.delete_if { |a| a == "" }.each { |a| self.categories << Category.find(a) }
 # end

  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attribute|
      category = Category.find_or_create_by(category_attribute)
      self.categories << category
    end
  end

end
