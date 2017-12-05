require 'pry'
class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories, reject_if: :reject_attributes

  def categories_attributes=(categories_attributes)
    categories_attributes.each do |i, category_attribute|
      category = Category.find_or_create_by(category_attribute) unless category_attribute.blank?
      self.categories << category
    end
  end

  # def category_ids=(category_ids)
  #   category_ids.each do |id|
  #     if !id.blank?
  #       self.categories << Category.find(id)
  #     end
  #   end
  # end

 def reject_attributes(attributes)
    attributes['name'].blank?
  end
  



end
