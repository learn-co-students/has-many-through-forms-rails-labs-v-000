require 'pry'

class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories

  has_many :comments
  has_many :users, through: :comments

<<<<<<< HEAD
  def categories_attributes=(categories_hashes)
    categories_hashes.each do |i, category_attributes|
      if category_attributes[:name].present?
        category = Category.find_or_create_by(name: category_attributes[:name])
        if !self.categories.include?(category) 
        self.post_categories.build(:category => category)
        end
      end
    end
  end

  def new_comment_new_user
    
  end

  def new_coment_existing_user

=======
  accepts_nested_attributes_for :comments, reject_if: proc { |attributes| attributes['username'].blank? }
 
  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attribute|
      category = Category.find_or_create_by(category_attribute)
      self.post_categories.build(category: category)
    end 
>>>>>>> 98fcc365fe2cb3c23cb67cf68ceab9b7e6b0110c
  end
end