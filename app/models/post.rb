class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  def uniq_users_list
    users = self.users.collect
    users.map {|u| u }.uniq 
  end

end
