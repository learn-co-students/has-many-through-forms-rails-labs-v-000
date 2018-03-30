require 'pry'

class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories

  def categories_attributes=(array_of_hashes)
    array_of_hashes.values.each do |hash|
      self.categories << Category.find_or_create_by(hash) unless hash[:name].blank?
    end
  end


end
