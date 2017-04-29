class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  def uniq_users_list
    users = self.users.collect
    users.map {|u| u }.uniq
  end

  def categories_attributes=(attributes_hash)
    binding.pry
    category = Category.find_or_create_by(name: attributes_hash[:name])
    self.post_categories.build(category: category)
    self.save
  end

end
