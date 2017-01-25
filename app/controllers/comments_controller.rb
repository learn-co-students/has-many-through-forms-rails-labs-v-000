class CommentsController < ApplicationController

  def create
    comment = Comment.new
    comment.content = comment_params[:content]
    comment.post_id = comment_params[:post_id]
    if !comment_params[:user].empty?
      comment.user = User.create(username: comment_params[:user])
    else
      comment.user_id = comment_params[:user_id]
    end
    comment.save

    redirect_to comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, :user)
  end
end
