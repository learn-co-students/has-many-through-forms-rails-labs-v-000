class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :comments#, :categories, reject_if: proc {|attribute| attribute["name"].empty?}

  def categories_attributes=(category_attributes)
    category_attributes.values.each do |v|
      v["name"].strip!
      self.categories << Category.find_or_create_by(v)
    end
  end

  def unique_commenters
    self.users.distinct
  end

  end