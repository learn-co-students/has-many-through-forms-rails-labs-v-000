class CommentsController < ApplicationController

  def create

  comment = Comment.create(comment_params)
  comment.user_create(params[:comment_user_attributes_username])
  flash[:notice] = "#{comment.user.username} says: #{comment.content}"
    redirect_to comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
