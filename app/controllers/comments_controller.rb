class CommentsController < ApplicationController

  def create
    comment = Comment.create(comment_params)
    redirect_to comment.post
  end

  private

  def comment_params
    if params[:comment][:user_attributes][:username] != ''
      params.require(:comment).permit(:content, :post_id, user_attributes:[:username])
    else
      params.require(:comment).permit(:content, :post_id, :user_id)
    end
  end
end
