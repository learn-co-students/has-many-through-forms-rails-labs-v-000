require 'pry'
class CommentsController < ApplicationController

  def new
    @comment = Comment.new(comment_params)
    
  end

#   def create
# raise params.inspect
#     @comment = Comment.create(comment_params)
#   # redirect_to post_path(@comment.post_id)
#   # redirect_to posts_path(post_id)
#   # render 'posts/show/:id'
    end
 
  # private
  # def comment_params
  #   params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  # end
end
