class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  
  # accepts_nested_attributes_for :categories
  # accepts_nested_attributes_for :users

  # def users_attribute=(users_attributes)
  # 	users_attributes.each do |user_attributes|
  #       user = User.find_or_create_by(username: user_attributes[:username])
  # 		self.users.build(user)
  # 	end
  # end

  def categories_attributes=(categories)
  	categories.each do |index, category_hash|
  		if category_hash[:name].present?
			category = Category.find_or_create_by(name: category_hash[:name])
			if !self.categories.include?(category)
			    self.post_categories.build(:category => category) 
			end
        end
  	end
  end

end


# for the new post
# {
# 	post =>{
# 		title:,
#       category_ids:,
# 		categories_attributes => { 0 => { :name }, 1 => { :name } },
# 	}
# }


# for the comment in show page 
#  p.comments.build({content: "Wow grate post", user_id: "1"})


# comment => {content: "Wow grate post", user_id: "1"}
# user => {username: "78gogo"}