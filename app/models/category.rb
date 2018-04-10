# Illustration of this workspace is available here:
# https://i.imgur.com/sEiHNRX.png
class Category < ActiveRecord::Base
  has_many :post_categories
  has_many :posts, through: :post_categories

  def titleize_name
    name.titleize
  end
end
