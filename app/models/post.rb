class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :users

  def users_attributes=(users_attributes)
		user = User.find_or_create_by(params[:post][:users_attributes]["0"][:username])
		self.users << user
	end
end