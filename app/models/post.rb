class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  def categories_attributes=(categories_attributes)
  	categories_attributes.each do |i, category_attributes|
  		if category_attributes[:name].present?
  			category = Category.find_or_create_by(name: category_attributes[:name])
  		if !self.categories.include?(category)
  			self.post_categories.build(category: category)
  		end
  	end
  end
end

  def comments_attributes=(comments_attributes)
      comments_attributes.each do |i, comment_attributes|
        if comment_attributes[:comment_content].empty?
          comment_content = Comment.find_or_create_by(comment_content: comment_attributes[:comment_content])
          if !self.comment_content.include?(comment_content)
            self.comment_content.build(comment_content: comment_content)
          end
        end
      end
    end

  #   def users_attributes=(user_attributes)
  #     users_attributes.each do |i, user_attributes|
  #       if user_attributes[:username].unique?
  #         user = User.find_or_create_by(username: comment_attributes[:username])
  #       end
  #     end
  #   end

end
