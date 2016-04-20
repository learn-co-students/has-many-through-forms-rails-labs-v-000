require 'pry'

class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  def categories_attributes=(categories_hashes) #hash is {"0" => {"name" => "NAME INPUT IF ANY"}}
    categories_hashes.each do |i, category_attributes| #i => "0" , attribute => {"name" => "NAME INPUT IF ANY"}
      if category_attributes[:name].present? # checking "NAME INPUT IF ANY"
        category = Category.find_or_create_by(name: category_attributes[:name])
        if !self.categories.include?(category)
          self.post_categories.build(category: category)
        end
      end
    end
  end
  
end
