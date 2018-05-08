class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def comments_attributes=(comments_attributes)
  	comments_attributes.each do |i, comment_attributes|
  		if comment_attributes[:content, :username].present?
  			comment = Comment.find_or_create_by(content: category_attributes[:content, :username])
  		if !self.comments.include?(content, username)
  			self.post_comments.build(content: content, username: username)
  		end
  	end
  end
end
  
  

end
