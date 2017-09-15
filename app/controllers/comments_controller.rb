class CommentsController < ApplicationController

  def create
  	if comment_params[:user_attributes][:username].empty?
  		comment = Comment.create(content: comment_params[:content], post_id: comment_params[:post_id], user_id: comment_params[:user_id])
    else
    	comment = Comment.create(comment_params) 
    end
    redirect_to comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
