class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  # when post is shown, user can add comment
  accepts_nested_attributes_for :users, reject_if: proc {|attr| attr.any?{|a| a.blank?}}
  accepts_nested_attributes_for :categories, reject_if: proc {|attr| attr.any?{|a| a.blank?}}

  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attribute|
      category = Category.find_or_create_by(category_attribute)
      self.categories << category
    end
  end

  def users_attributes=(users_attributes)
    users_attributes.values.each do |user_attribute|
      user = User.find_or_create_by(user_attribute)
      self.users << user #apparently doesn't overwrite, because modified by active record
    end
  end
end
