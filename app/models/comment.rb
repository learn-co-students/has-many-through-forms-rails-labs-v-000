class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def comments_attributes=(comments_attributes)
  	comments_attributes.each do |i, comment_attributes|
  		comment = Comment.find_or_create_by(comment_attributes)
  		self.comments.build(comment: comment)
  	end
  end
  


end
