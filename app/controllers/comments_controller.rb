class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    if !comment_params[:content].blank? && (!comment_params[:user_id].blank? || !comment_params[:user_attributes][:username].blank?)
      comment = Comment.create(comment_params)
      redirect_to comment.post
    else
      redirect_to post_path(comment_params[:post_id])
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username, :email])
  end
end
