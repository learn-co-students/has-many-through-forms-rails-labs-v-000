class CommentsController < ApplicationController

  def create
    comment = Comment.create(comment_params)
    if params[:comment][:user_attributes][:username] == ""
      comment.user = User.find(params[:comment][:user_id])
      comment.save
    end
    redirect_to post_path(Post.find(params[:comment][:post_id]))
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes: [:username])
  end
end
