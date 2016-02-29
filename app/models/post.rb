class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :comments
  accepts_nested_attributes_for :user, :reject_if => lambda{ |a| a['username'].blank? }

  def commentors
    self.comments.map{|c| c.user}.uniq
  end

  def comments_attributes=(attributes)
    self.comments.build(attributes["0"])
  end
end
