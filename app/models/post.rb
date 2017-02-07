class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  #accepts_nested_attributes_for :categories

  def categories_attributes=(attributes)
    #require 'pry'
    #binding.pry

    attributes.values.each do |attr|
        if attr[:name]!=""
            cat = Category.find_or_create_by(attr)
            self.categories << cat
        end
    end
  end


end
