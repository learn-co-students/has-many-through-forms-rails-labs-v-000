class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  
  def comments_attributes=(comments_attributes)
      comments_attributes.each do |i, comment_attributes|
        if comment_attributes[:content].empty?
          comment = Comment.find_or_create_by(content: comment_attributes[:content])
          if !self.comment.include?(content)
            self.comment_content.build(content: content)
          end
        end
      end
    end
  

end
