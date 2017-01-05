class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories, reject_if: :all_blank

  def categories_attributes=(params_hash) #at this point, it's a hash with one key-value pair. The key is "0" and the value is {"name" => "name from the input page"}
    params_hash.values.each do |attribute_key_value_pair|
      category = Category.find_or_create_by(attribute_key_value_pair)
      self.categories << category
    end
  end
end
