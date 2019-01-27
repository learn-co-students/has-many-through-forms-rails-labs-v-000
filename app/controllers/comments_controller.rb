class CommentsController < ApplicationController

  def create
    comment = Comment.create(comment_params)
    if comment_params[:user_attributes][:username] ==""
      comment = Comment.create(content: comment_params[:content], user_id: comment_params[:user_id], post_id: comment_params[:post_id])
      redirect_to comment.post
    else
      comment = Comment.create(comment_params)
      redirect_to comment.post
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
