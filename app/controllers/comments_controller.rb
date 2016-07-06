class CommentsController < ApplicationController

  def create
    
    comment = Comment.new(content: comment_params[:content], post_id: comment_params[:post_id])
    if comment_params[:user_id] != ''
      comment.user_id = comment_params[:user_id]
    else
      comment.user_attributes = comment_params[:user_attributes]
    end
    comment.save
    redirect_to comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
