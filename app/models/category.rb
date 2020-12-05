class Category < ActiveRecord::Base
  has_many :post_categories
  has_many :posts, through: :post_categories

  def self.find_or_build_by(name)
    self.find_by(name: name) || self.build(name: name)
  end
end
