class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    unless params[:comment_user_id].empty?
      @comment.user_id = params[:comment_user_id]
    else
      @comment.user = User.find_or_create_by(username: params[:comment_user_attributes_username])
    end
    @comment.save
    redirect_to post_path(@comment.post)
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :comment_user_id, users_attributes:[:username, :user_id])
  end
end