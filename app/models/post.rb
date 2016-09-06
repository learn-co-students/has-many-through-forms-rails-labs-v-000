require 'pry'
class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :users

  def categories_attributes=(attributes)
    attributes.each do |key, new_category|
      if new_category[:name].present?
        @category = Category.create(new_category)
        self.post_categories.build(:category => @category)
      end
    end
  end


end
