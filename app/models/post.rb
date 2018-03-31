require 'pry'

class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  def categories_attributes=(array_of_hashes)
    array_of_hashes.values.each do |hash|
      unless self.categories.include?(Category.find_by(hash)) || hash[:name].blank?
      #  binding.pry
        self.categories << Category.find_or_create_by(hash)
      end
    end
  end

end
